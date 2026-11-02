package com.lumioapps.peekless

import androidx.core.content.FileProvider

/**
 * Our own FileProvider, so it never clashes with the one a plugin may declare.
 * It only serves the "exports" folder (see res/xml/export_paths.xml).
 */
class ExportFileProvider : FileProvider()
