#TEMPLATE = app
TARGET = PV

QT += quick quickcontrols2

CONFIG += c++17

HEADERS += \

SOURCES += \
        main.cpp

RESOURCES += \
    qml.qrc \
    fonts.qrc \
    png.qrc \
    svg.qrc

TRANSLATIONS += \
    PVUI_de_DE.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = $$PWD/QML

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH = $$PWD/QML

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
