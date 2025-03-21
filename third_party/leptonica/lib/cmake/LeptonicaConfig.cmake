# ===================================================================================
#  The Leptonica CMake configuration file
#
#             ** File generated automatically, do not modify **
#
#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    find_package(Leptonica REQUIRED)
#    include_directories(${Leptonica_INCLUDE_DIRS})
#    target_link_libraries(MY_TARGET_NAME ${Leptonica_LIBRARIES})
#
#    This file will define the following variables:
#      - Leptonica_LIBRARIES             : The list of all imported targets for OpenCV modules.
#      - Leptonica_INCLUDE_DIRS          : The Leptonica include directories.
#      - Leptonica_VERSION               : The version of this Leptonica build: "@PROJECT_VERSION@"
#      - Leptonica_VERSION_MAJOR         : Major version part of Leptonica_VERSION: "@PROJECT_VERSION_MAJOR@"
#      - Leptonica_VERSION_MINOR         : Minor version part of Leptonica_VERSION: "@PROJECT_VERSION_MINOR@"
#      - Leptonica_VERSION_PATCH         : Patch version part of Leptonica_VERSION: "@PROJECT_VERSION_PATCH@"
#
# ===================================================================================

include(CMakeFindDependencyMacro)
if (@OPENJPEG_SUPPORT@)
    find_dependency(OpenJPEG CONFIG)
endif()
if (@LIBWEBP_SUPPORT@)
    find_dependency(WebP @MINIMUM_WEBPMUX_VERSION@ CONFIG)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/LeptonicaTargets.cmake)

# ======================================================
#  Version variables:
# ======================================================

SET(Leptonica_VERSION           @leptonica_VERSION@)
SET(Leptonica_VERSION_MAJOR     @leptonica_VERSION_MAJOR@)
SET(Leptonica_VERSION_MINOR     @leptonica_VERSION_MINOR@)
SET(Leptonica_VERSION_PATCH     @leptonica_VERSION_PATCH@)

# ======================================================
# Include directories to add to the user project:
# ======================================================

# Provide the include directories to the caller
set(Leptonica_INCLUDE_DIRS      "/opt/homebrew/Cellar/leptonica/1.85.0/include/leptonica")

# ====================================================================
# Link libraries:
# ====================================================================

set(Leptonica_LIBRARIES         @leptonica_NAME@)
