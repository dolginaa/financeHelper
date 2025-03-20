cmake_minimum_required(VERSION 3.16)

project(untitled1 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/third_party")

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOUIC_SEARCH_PATHS ${CMAKE_SOURCE_DIR}/ui)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(THIRD_PARTY_DIR "${CMAKE_SOURCE_DIR}/third_party")
set(QT_PREFIX_PATH "${THIRD_PARTY_DIR}/qt")
set(TESSERACT_PREFIX_PATH "${THIRD_PARTY_DIR}/tesseract")
set(LEPTONICA_PREFIX_PATH "${THIRD_PARTY_DIR}/leptonica")
set(NLOHMANN_JSON_PREFIX_PATH "${THIRD_PARTY_DIR}/nlohmann_json")
set(BOOST_PREFIX_PATH "${THIRD_PARTY_DIR}/boost")
set(POPPLER_PREFIX_PATH "${THIRD_PARTY_DIR}/poppler")

set(TESSERACT_INCLUDE_DIR "${TESSERACT_PREFIX_PATH}/include")
set(TESSERACT_LIB_DIR "${TESSERACT_PREFIX_PATH}/lib")
set(LEPTONICA_INCLUDE_DIR "${LEPTONICA_PREFIX_PATH}/include")
set(LEPTONICA_LIB_DIR "${LEPTONICA_PREFIX_PATH}/lib")
set(NLOHMANN_JSON_INCLUDE_DIR "${NLOHMANN_JSON_PREFIX_PATH}/include")
set(BOOST_INCLUDE_DIR "${BOOST_PREFIX_PATH}/include")
set(BOOST_LIB_DIR "${BOOST_PREFIX_PATH}/lib")
set(POPPLER_INCLUDE_DIR "${POPPLER_PREFIX_PATH}/include")
set(POPPLER_LIB_DIR "${POPPLER_PREFIX_PATH}/lib")

set(Qt6_DIR "${QT_PREFIX_PATH}")

find_package(Qt6 CONFIG REQUIRED COMPONENTS Core Gui Widgets Pdf Charts Test PrintSupport PATHS "${QT_PREFIX_PATH}" NO_DEFAULT_PATH)

find_package(OpenCV REQUIRED)
find_package(nlohmann_json REQUIRED PATHS "${NLOHMANN_JSON_PREFIX_PATH}" NO_DEFAULT_PATH)

add_subdirectory(${CMAKE_SOURCE_DIR}/third_party/googletest)
include_directories(${GTEST_INCLUDE_DIRS})

find_library(POPPLER_LIB poppler PATHS ${POPPLER_LIB_DIR} NO_DEFAULT_PATH)
find_library(POPPLER_CPP_LIB poppler-cpp PATHS ${POPPLER_LIB_DIR} NO_DEFAULT_PATH)
find_path(POPPLER_INCLUDE_DIR poppler-config.h PATHS ${POPPLER_INCLUDE_DIR} NO_DEFAULT_PATH)

set(PROJECT_SOURCES
    main.cpp
    ui/mainwindow.ui
    ui/add_income_dialog.ui
    ui/report_dialog.ui
    ui/expense_report_dialog.ui
    ui/upload_receipt_dialog.ui
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
    ui/expense_report_dialog.cpp
    ui/expense_report_dialog.h
    include/mainwindow.h
    src/mainwindow.cpp
    include/api.h
    src/api.cpp
)

qt_add_executable(untitled1
    MANUAL_FINALIZATION
    ${PROJECT_SOURCES}
)


target_include_directories(untitled1 PRIVATE include ui ${CMAKE_BINARY_DIR}/untitled1_autogen/include ${TESSERACT_INCLUDE_DIR} ${LEPTONICA_INCLUDE_DIR})

target_link_libraries(untitled1 PRIVATE
    Qt${QT_VERSION_MAJOR}::Widgets
    Qt${QT_VERSION_MAJOR}::Gui
    Qt${QT_VERSION_MAJOR}::Core
    Qt${QT_VERSION_MAJOR}::Pdf
    Qt${QT_VERSION_MAJOR}::Test
    Qt${QT_VERSION_MAJOR}::PrintSupport
    Qt${QT_VERSION_MAJOR}::Charts
    "${TESSERACT_LIB_DIR}/libtesseract.dylib"
    "${LEPTONICA_LIB_DIR}/libleptonica.dylib"
    ${OpenCV_LIBS}
    nlohmann_json::nlohmann_json
    ${POPPLER_LIB}
    ${POPPLER_CPP_LIB}
)

add_executable(pdf_tests test_api.cpp)

target_include_directories(pdf_tests PRIVATE ${POPPLER_INCLUDE_DIR} ${OpenCV_INCLUDE_DIRS})
target_link_libraries(pdf_tests PRIVATE gtest gtest_main ${POPPLER_LIB} ${POPPLER_CPP_LIB} ${OpenCV_LIBS})

if(APPLE)
    set_target_properties(untitled1 PROPERTIES
        MACOSX_BUNDLE TRUE
        MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
        MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    )
elseif(WIN32)
    set_target_properties(untitled1 PROPERTIES
        WIN32_EXECUTABLE TRUE
    )
endif()

include(GNUInstallDirs)
install(TARGETS untitled1
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

if(QT_VERSION_MAJOR EQUAL 6)
    qt_finalize_executable(untitled1)
endif()
