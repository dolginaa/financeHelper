#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::PdfWidgets" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::PdfWidgets APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::PdfWidgets PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtPdfWidgets.framework/Versions/A/QtPdfWidgets"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtPdfWidgets.framework/Versions/A/QtPdfWidgets"
  )

list(APPEND _cmake_import_check_targets Qt6::PdfWidgets )
list(APPEND _cmake_import_check_files_for_Qt6::PdfWidgets "${_IMPORT_PREFIX}/lib/QtPdfWidgets.framework/Versions/A/QtPdfWidgets" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
