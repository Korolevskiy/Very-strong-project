
QT  += core gui svg xml qml quick quickwidgets sql core multimedia
CONFIG += c++11
CONFIG += resources_big



DEFINES += QT_DEPRECATED_WARNINGS



SOURCES += \
Actor.qml\
ButtonT.qml\
Gameplay.qml\
Menu.qml\
Opt.qml\
Play.qml\
test.qml \
  main.cpp \
    Controlers/herocontrol.cpp



RESOURCES += qml.qrc


QML_IMPORT_PATH =


QML_DESIGNER_IMPORT_PATH =

SOURCES +=

HEADERS +=Controlers/herocontrol.h


qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
   Fon_menu.wav \
    Roland-JV-2080-Nylon-Gtr-C3.wav\
    image/stand.png \
    image/Hero.png \
    image/fight.png \
    image/left.png \
    image/travka2.jpg
