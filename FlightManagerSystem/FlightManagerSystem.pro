#-------------------------------------------------
#
# Project created by QtCreator 2016-12-28T20:17:48
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = FlightManagerSystem
TEMPLATE = app

unix{
DESTDIR +=  $$PWD/bin/
}

win32{
CONFIG(release, debug | release):{
DESTDIR +=  $$PWD/bin/Release/
}else {
DESTDIR +=  $$PWD/bin/Debug/
}
}

INCLUDEPATH +=  . \
                ./Connect/ \
                ./Login/ \
                ./MainWindow

SOURCES +=  main.cpp \
            Connect/ConnectDataBase.cpp \
            MainWindow/FlightManager.cpp \
            Login/Login.cpp

HEADERS +=  Connect/ConnectDataBase.h \
            Login/Login.h \
            MainWindow/FlightManager.h

FORMS    += Login/Login.ui \
            MainWindow/FlightManager.ui
