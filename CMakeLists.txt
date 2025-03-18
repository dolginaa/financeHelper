cmake_minimum_required(VERSION 3.16)

project(untitled1 VERSION 0.1 LANGUAGES CXX)

# Указать путь к Qt 6.8.0
set(CMAKE_PREFIX_PATH "/Users/adolgina/Qt/6.8.0/macos/lib/cmake")

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOUIC_SEARCH_PATHS ${CMAKE_SOURCE_DIR}/ui)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Gui Widgets Pdf Charts PrintSupport)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Gui Widgets Pdf Charts PrintSupport)
message(STATUS "Qt${QT_VERSION_MAJOR} was found in: ${Qt${QT_VERSION_MAJOR}_DIR}")
message(STATUS "CMAKE_PREFIX_PATH: ${CMAKE_PREFIX_PATH}")

# Specify Tesseract and Leptonica paths
set(TESSERACT_PREFIX_PATH "/opt/homebrew/opt/tesseract")
set(LEPTONICA_PREFIX_PATH "/opt/homebrew/opt/leptonica")
set(NLOHMANN_JSON_PREFIX_PATH "/opt/homebrew/opt/nlohmann-jso")
set(BOOST_PREFIX_PATH "/opt/homebrew/opt/boost")

set(TESSERACT_INCLUDE_DIR "${TESSERACT_PREFIX_PATH}/include")
set(TESSERACT_LIB_DIR "${TESSERACT_PREFIX_PATH}/lib")
set(LEPTONICA_INCLUDE_DIR "${LEPTONICA_PREFIX_PATH}/include")
set(LEPTONICA_LIB_DIR "${LEPTONICA_PREFIX_PATH}/lib")
set(NLOHMANN_JSON_INCLUDE_DIR "${LEPTONICA_PREFIX_PATH}/include")
set(BOOST_INCLUDE_DIR "${BOOST_PREFIX_PATH}/include")
set(BOOST_LIB_DIR "${BOOST_PREFIX_PATH}/lib")


# Add Tesseract and Leptonica include directories
include_directories(${TESSERACT_INCLUDE_DIR} ${LEPTONICA_INCLUDE_DIR} ${NLOHMANN_JSON_INCLUDE_DIR} ${BOOST_INCLUDE_DIR})

# Find OpenCV
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

set(PROJECT_SOURCES
        main.cpp
        ui/mainwindow.ui
)

if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
    qt_add_executable(untitled1
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
        include/image_processing.h
        include/text_recognition.h
        src/image_processing.cpp
        src/text_recognition.cpp


        include/storage.h
        src/storage.cpp
        include/chart_widget.h
        src/chart_widget.cpp


        ui/add_income_dialog.h
        ui/add_income_dialog.cpp
        ui/report_dialog.h
        ui/report_dialog.cpp
        ui/upload_receipt_dialog.h
        ui/upload_receipt_dialog.cpp

        ui/add_income_dialog.ui
        ui/report_dialog.ui
        ui/upload_receipt_dialog.ui
        include/mainwindow.h
        src/mainwindow.cpp
        include/api.h
        src/api.cpp
    )
else()
    if(ANDROID)
        add_library(untitled1 SHARED
            ${PROJECT_SOURCES}
        )
    else()
        add_executable(untitled1
            ${PROJECT_SOURCES}
        )
    endif()
endif()

target_include_directories(untitled1 PRIVATE include)

find_package(nlohmann_json REQUIRED)
target_link_libraries(untitled1 PRIVATE nlohmann_json::nlohmann_json)


# Link Tesseract and Leptonica libraries
target_link_libraries(untitled1 PRIVATE
    Qt${QT_VERSION_MAJOR}::Widgets
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Pdf
    Qt${QT_VERSION_MAJOR}::PrintSupport
    Qt${QT_VERSION_MAJOR}::Charts
    "${TESSERACT_LIB_DIR}/libtesseract.dylib"
    "${LEPTONICA_LIB_DIR}/libleptonica.dylib"
    ${OpenCV_LIBS}
)

if(${QT_VERSION} VERSION_LESS 6.1.0)
  set(BUNDLE_ID_OPTION MACOSX_BUNDLE_GUI_IDENTIFIER com.example.untitled1)
endif()

set_target_properties(untitled1 PROPERTIES
    ${BUNDLE_ID_OPTION}
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

include(GNUInstallDirs)
install(TARGETS untitled1
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

if(QT_VERSION_MAJOR EQUAL 6)
    qt_finalize_executable(untitled1)
endif()
