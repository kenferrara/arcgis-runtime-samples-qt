#-------------------------------------------------
# Copyright 2015-2016 Esri.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#-------------------------------------------------

mac {
    cache()
}

#-------------------------------------------------------------------------------

CONFIG += c++11

QT += opengl qml quick positioning sensors

ARCGIS_RUNTIME_VERSION = 100.1
include($$PWD/arcgisruntime.pri)

TEMPLATE = app
TARGET = GraphicsOverlayDictionaryRenderer_3D

#-------------------------------------------------------------------------------

HEADERS += \
    GraphicsOverlayDictionaryRenderer_3D.h

SOURCES += \
    main.cpp \
    GraphicsOverlayDictionaryRenderer_3D.cpp

RESOURCES += GraphicsOverlayDictionaryRenderer_3D.qrc

#-------------------------------------------------------------------------------

win32 {
    LIBS += \
        Ole32.lib
}

ios {
    INCLUDEPATH += $$PWD
    DEPENDPATH += $$PWD

    OTHER_FILES += \
        $$PWD/Info.plist

    QMAKE_INFO_PLIST = $$PWD/Info.plist
}

android {
    INCLUDEPATH += $$PWD
    DEPENDPATH += $$PWD
}

macx {
    QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.11
}
