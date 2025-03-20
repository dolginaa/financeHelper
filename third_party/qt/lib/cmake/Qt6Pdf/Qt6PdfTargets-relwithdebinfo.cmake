#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::Pdf" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::Pdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::Pdf PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "Qt6::Network"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtPdf.framework/Versions/A/QtPdf"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtPdf.framework/Versions/A/QtPdf"
  )

list(APPEND _cmake_import_check_targets Qt6::Pdf )
list(APPEND _cmake_import_check_files_for_Qt6::Pdf "${_IMPORT_PREFIX}/lib/QtPdf.framework/Versions/A/QtPdf" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
