#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickShapesPrivate" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QuickShapesPrivate APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::QuickShapesPrivate PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtQuickShapes.framework/Versions/A/QtQuickShapes"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtQuickShapes.framework/Versions/A/QtQuickShapes"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickShapesPrivate )
list(APPEND _cmake_import_check_files_for_Qt6::QuickShapesPrivate "${_IMPORT_PREFIX}/lib/QtQuickShapes.framework/Versions/A/QtQuickShapes" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
