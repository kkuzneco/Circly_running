#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "check_position.h"
int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
    //QQuickView viewer;
   // viewer.setSource(QUrl("./qml/main.qml"));
   // viewer.show();

   // MyClass myClass;
   // QQuickItem* item = viewer.rootObject();
   // QObject::connect(item, SIGNAL(buttonClicked()), &myClass, SLOT(mySlot()));
   // QObject::connect(&myClass, SIGNAL(mySignal(QVariant)), item, SLOT(updateGUI(QVariant)));
}

