#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QuickControls2ImagineStyleImpl" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QuickControls2ImagineStyleImpl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::QuickControls2ImagineStyleImpl PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "Qt6::Gui;Qt6::Qml;Qt6::Core"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtQuickControls2ImagineStyleImpl.framework/Versions/A/QtQuickControls2ImagineStyleImpl"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtQuickControls2ImagineStyleImpl.framework/Versions/A/QtQuickControls2ImagineStyleImpl"
  )

list(APPEND _cmake_import_check_targets Qt6::QuickControls2ImagineStyleImpl )
list(APPEND _cmake_import_check_files_for_Qt6::QuickControls2ImagineStyleImpl "${_IMPORT_PREFIX}/lib/QtQuickControls2ImagineStyleImpl.framework/Versions/A/QtQuickControls2ImagineStyleImpl" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
