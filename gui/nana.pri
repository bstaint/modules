NANA_DIR = $$PWD/nana

INCLUDEPATH += $$NANA_DIR/include

DEFINES += _UNICODE

LIBS += -lOle32 -lGdi32 -lUser32 -lShell32 -lComdlg32

CONFIG(debug, debug|release) {
  LIBS += -L$$NANA_DIR/lib -lnana_d
} else {
  LIBS += -L$$NANA_DIR/lib -lnana
}
