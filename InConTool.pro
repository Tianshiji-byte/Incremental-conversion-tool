QT += core gui widgets

CONFIG += c++17

win32-msvc*:QMAKE_CXXFLAGS += /utf-8
# QMAKE_LFLAGS += "/MANIFESTUAC:\"level='requireAdministrator' uiAccess='false'\""

SOURCES += \
    src/main.cpp \
    src/InConTool.cpp

HEADERS += \
    src/InConTool.h

FORMS += \
    src/InConTool.ui

# Default rules for deployment.
    qnx: target.path = /tmp/$${TARGET}/bin
    else: unix:!android: target.path = /opt/$${TARGET}/bin
    !isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resource.qrc

RC_ICONS = "images/Logo.ico"
