#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickControls2Basic" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QuickControls2Basic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::QuickControls2Basic PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "Qt6::QuickControls2BasicStyleImpl;Qt6::Qml;Qt6::Core"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtQuickControls2Basic.framework/Versions/A/QtQuickControls2Basic"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtQuickControls2Basic.framework/Versions/A/QtQuickControls2Basic"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickControls2Basic )
list(APPEND _cmake_import_check_files_for_Qt6::QuickControls2Basic "${_IMPORT_PREFIX}/lib/QtQuickControls2Basic.framework/Versions/A/QtQuickControls2Basic" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
