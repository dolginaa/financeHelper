# Additional target information for Qt6ChartsQml
if(NOT DEFINED QT_DEFAULT_IMPORT_CONFIGURATION)
    set(QT_DEFAULT_IMPORT_CONFIGURATION RELWITHDEBINFO)
endif()
__qt_internal_promote_target_to_global_checked(Qt6::ChartsQml)
get_target_property(_qt_imported_location Qt6::ChartsQml IMPORTED_LOCATION_RELWITHDEBINFO)
get_target_property(_qt_imported_soname Qt6::ChartsQml IMPORTED_SONAME_RELWITHDEBINFO)
get_target_property(_qt_imported_link_dependencies Qt6::ChartsQml IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO)
get_target_property(_qt_imported_location_default Qt6::ChartsQml IMPORTED_LOCATION_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_soname_default Qt6::ChartsQml IMPORTED_SONAME_${QT_DEFAULT_IMPORT_CONFIGURATION})
get_target_property(_qt_imported_link_dependencies_default Qt6::ChartsQml IMPORTED_LINK_DEPENDENT_LIBRARIES_${QT_DEFAULT_IMPORT_CONFIGURATION})

# Import target "Qt6::ChartsQml" for configuration "Release"
set_property(TARGET Qt6::ChartsQml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)

if(_qt_imported_location)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_LOCATION_RELEASE "${_qt_imported_location}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_SONAME_RELEASE "${_qt_imported_soname}")
endif()
if(_qt_imported_link_dependencies)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "${_qt_imported_link_dependencies}")
endif()

# Import target "Qt6::ChartsQml" for configuration "MinSizeRel"
set_property(TARGET Qt6::ChartsQml APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)

if(_qt_imported_location)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_LOCATION_MINSIZEREL "${_qt_imported_location}")
endif()
if(_qt_imported_soname)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_SONAME_MINSIZEREL "${_qt_imported_soname}")
endif()
if(_qt_imported_link_dependencies)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "${_qt_imported_link_dependencies}")
endif()

# Default configuration
if(_qt_imported_location_default)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_LOCATION "${_qt_imported_location_default}")
endif()
if(_qt_imported_soname_default)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_SONAME "${_qt_imported_soname_default}")
endif()
if(_qt_imported_link_dependencies_default)
    set_property(TARGET Qt6::ChartsQml PROPERTY IMPORTED_LINK_DEPENDENT_LIBRARIES "${_qt_imported_link_dependencies_default}")
endif()
__qt_internal_promote_target_to_global_checked(Qt6::ChartsQmlPrivate)

unset(_qt_imported_location)
unset(_qt_imported_location_default)
unset(_qt_imported_soname)
unset(_qt_imported_soname_default)
unset(_qt_imported_link_dependencies)
unset(_qt_imported_link_dependencies_default)
unset(_qt_imported_objects)
unset(_qt_imported_objects_default)
unset(_qt_imported_clr)
unset(_qt_imported_clr_default)
unset(_qt_imported_configs)
