#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QmlCompiler" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QmlCompiler APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::QmlCompiler PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/QtQmlCompiler.framework/Versions/A/QtQmlCompiler"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/QtQmlCompiler.framework/Versions/A/QtQmlCompiler"
  )

list(APPEND _cmake_import_check_targets Qt6::QmlCompiler )
list(APPEND _cmake_import_check_files_for_Qt6::QmlCompiler "${_IMPORT_PREFIX}/lib/QtQmlCompiler.framework/Versions/A/QtQmlCompiler" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
