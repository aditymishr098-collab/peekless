package com.lumioapps.peekless

import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Typeface
import android.graphics.pdf.PdfDocument
import android.os.Build
import android.text.Layout
import android.text.SpannableStringBuilder
import android.text.Spanned
import android.text.StaticLayout
import android.text.TextPaint
import android.text.style.ForegroundColorSpan
import android.text.style.StyleSpan
import java.io.File
import java.io.FileOutputStream

/**
 * Draws the report as a PDF with Android's own text layout. That way every
 * language and script (Arabic, Hindi, Thai, Chinese...) is shown correctly
 * with the fonts that are already on the phone.
 */
object PdfExport {
    private const val PAGE_WIDTH = 595
    private const val PAGE_HEIGHT = 842
    private const val MARGIN = 40f
    private const val BULLET = 14f

    /** The folder for exports. Old exports are deleted every time. */
    fun exportsDir(context: Context): File {
        val dir = File(context.cacheDir, "exports")
        dir.mkdirs()
        dir.listFiles()?.forEach { it.delete() }
        return dir
    }

    @Suppress("DEPRECATION")
    private fun layout(text: CharSequence, paint: TextPaint, width: Int): StaticLayout {
        return if (Build.VERSION.SDK_INT >= 23) {
            StaticLayout.Builder.obtain(text, 0, text.length, paint, width)
                .setAlignment(Layout.Alignment.ALIGN_NORMAL)
                .setLineSpacing(0f, 1.1f)
                .build()
        } else {
            StaticLayout(text, paint, width, Layout.Alignment.ALIGN_NORMAL, 1.1f, 0f, false)
        }
    }

    private fun paint(size: Float, color: Int, bold: Boolean = false): TextPaint {
        val p = TextPaint(Paint.ANTI_ALIAS_FLAG)
        p.textSize = size
        p.color = color
        p.typeface = if (bold) Typeface.DEFAULT_BOLD else Typeface.DEFAULT
        return p
    }

    private fun color(value: Any?): Int = (value as? Number)?.toInt() ?: Color.BLACK

    @Suppress("UNCHECKED_CAST")
    fun write(context: Context, doc: Map<String, Any?>): File {
        val name = (doc["fileName"] as? String)?.replace(Regex("[^A-Za-z0-9._-]"), "_")
            ?: "peekless-report.pdf"
        val file = File(exportsDir(context), name)

        val pdf = PdfDocument()
        var page: PdfDocument.Page? = null
        var canvas: Canvas? = null
        var pageNumber = 0
        var y = MARGIN
        val textWidth = (PAGE_WIDTH - 2 * MARGIN).toInt()
        val bottom = PAGE_HEIGHT - MARGIN

        fun newPage() {
            page?.let { pdf.finishPage(it) }
            pageNumber += 1
            val info = PdfDocument.PageInfo.Builder(PAGE_WIDTH, PAGE_HEIGHT, pageNumber).create()
            val next = pdf.startPage(info)
            page = next
            canvas = next.canvas
            y = MARGIN
        }

        fun draw(layout: StaticLayout, x: Float) {
            val c = canvas ?: return
            c.save()
            c.translate(x, y)
            layout.draw(c)
            c.restore()
            y += layout.height
        }

        try {
            newPage()

            draw(layout(doc["title"] as? String ?: "Peekless", paint(22f, Color.BLACK, true), textWidth), MARGIN)
            y += 2f
            draw(layout(doc["subtitle"] as? String ?: "", paint(10f, Color.DKGRAY), textWidth), MARGIN)
            y += 14f
            draw(
                layout(doc["scoreLine"] as? String ?: "", paint(15f, color(doc["scoreColor"]), true), textWidth),
                MARGIN,
            )
            y += 4f
            draw(layout(doc["countsLine"] as? String ?: "", paint(11f, Color.DKGRAY), textWidth), MARGIN)
            y += 14f

            val apps = (doc["apps"] as? List<Map<String, Any?>>) ?: emptyList()
            val namePaint = paint(12f, Color.BLACK, true)
            val smallPaint = paint(9f, Color.GRAY)
            val linePaint = paint(9.5f, Color.DKGRAY)
            val rule = Paint()
            rule.color = Color.LTGRAY
            rule.strokeWidth = 0.5f

            for (app in apps) {
                val appColor = color(app["color"])
                val title = SpannableStringBuilder()
                val appName = app["name"] as? String ?: ""
                title.append(appName)
                title.setSpan(StyleSpan(Typeface.BOLD), 0, title.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
                val start = title.length
                title.append("   ")
                title.append(app["score"] as? String ?: "")
                title.append(" · ")
                title.append(app["level"] as? String ?: "")
                title.setSpan(
                    ForegroundColorSpan(appColor),
                    start,
                    title.length,
                    Spanned.SPAN_EXCLUSIVE_EXCLUSIVE,
                )
                val width = textWidth - BULLET.toInt()
                val head = layout(title, namePaint, width)
                val pkg = layout(app["package"] as? String ?: "", smallPaint, width)
                val lines = ((app["lines"] as? List<*>) ?: emptyList<Any>())
                    .map { layout(it.toString(), linePaint, width) }

                val blockHeight = head.height + pkg.height + lines.sumOf { it.height } + 14f
                if (y + blockHeight > bottom) newPage()

                val c = canvas
                if (c != null) {
                    val dot = Paint(Paint.ANTI_ALIAS_FLAG)
                    dot.color = appColor
                    c.drawCircle(MARGIN + 4f, y + 9f, 4f, dot)
                }
                draw(head, MARGIN + BULLET)
                draw(pkg, MARGIN + BULLET)
                for (line in lines) draw(line, MARGIN + BULLET)
                y += 6f
                canvas?.drawLine(MARGIN, y, PAGE_WIDTH - MARGIN, y, rule)
                y += 8f
            }

            val footer = layout(doc["footer"] as? String ?: "", paint(9f, Color.GRAY), textWidth)
            if (y + footer.height + 10f > bottom) newPage()
            y += 10f
            draw(footer, MARGIN)

            page?.let { pdf.finishPage(it) }
            page = null
            FileOutputStream(file).use { pdf.writeTo(it) }
        } finally {
            pdf.close()
        }
        return file
    }
}
