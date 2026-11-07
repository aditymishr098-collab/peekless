package com.lumioapps.peekless

import android.content.Context
import android.content.pm.PackageManager
import android.content.pm.Signature
import android.os.Build
import java.io.ByteArrayInputStream
import java.security.MessageDigest
import java.security.cert.CertificateFactory
import java.security.cert.X509Certificate

/**
 * Reads the certificate an app was signed with. Only the certificate is read,
 * never the app's files. Everything stays on the phone.
 */
object Certs {
    /**
     * Returns sha256 (hex pairs separated by colons), subject, debug (true for
     * the standard Android debug key), expires (milliseconds) and signers (how
     * many). Null when Android cannot give the signature.
     */
    @Suppress("DEPRECATION")
    fun info(context: Context, pkg: String): Map<String, Any?>? {
        return try {
            val pm = context.packageManager
            val signers: Array<Signature>? = if (Build.VERSION.SDK_INT >= 28) {
                val p = pm.getPackageInfo(pkg, PackageManager.GET_SIGNING_CERTIFICATES)
                val si = p.signingInfo
                if (si == null) null
                else if (si.hasMultipleSigners()) si.apkContentsSigners
                else si.signingCertificateHistory
            } else {
                pm.getPackageInfo(pkg, PackageManager.GET_SIGNATURES).signatures
            }
            if (signers == null || signers.isEmpty()) return null
            // With key rotation the history ends with the newest certificate.
            val current = signers.last()
            val bytes = current.toByteArray()
            val cert = CertificateFactory.getInstance("X.509")
                .generateCertificate(ByteArrayInputStream(bytes)) as X509Certificate
            val subject = cert.subjectX500Principal.name
            mapOf(
                "sha256" to hex(MessageDigest.getInstance("SHA-256").digest(bytes)),
                "subject" to subject,
                "debug" to isDebugSubject(subject),
                "expires" to cert.notAfter.time,
                "signers" to signers.size,
            )
        } catch (e: Exception) {
            null
        }
    }

    /** The Android SDK debug key has the subject "C=US, O=Android, CN=Android Debug". */
    fun isDebugSubject(subject: String): Boolean {
        return subject.contains("CN=Android Debug", ignoreCase = true)
    }

    private fun hex(bytes: ByteArray): String {
        return bytes.joinToString(":") { "%02X".format(it) }
    }
}
