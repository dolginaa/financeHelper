#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::MultimediaQuickPrivate" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::MultimediaQuickPrivate APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::MultimediaQuickPrivate PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "Qt6::Qml"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtMultimediaQuick.framework/Versions/A/QtMultimediaQuick"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtMultimediaQuick.framework/Versions/A/QtMultimediaQuick"
  )

list(APPEND _cmake_import_check_targets Qt6::MultimediaQuickPrivate )
list(APPEND _cmake_import_check_files_for_Qt6::MultimediaQuickPrivate "${_IMPORT_PREFIX}/lib/QtMultimediaQuick.framework/Versions/A/QtMultimediaQuick" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
