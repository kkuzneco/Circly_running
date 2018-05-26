#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "check_position.h"
#include "checking1.h"
#include "check_enemies.h"
int main(int argc, char *argv[])
{
#if defined(Q_OS_WIN)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    qmlRegisterType<CheckingPosition>
            ("checking1",1,0,"CheckingPosition");
    qmlRegisterType<CheckingPosition1>
            ("check_enemies",1,0,"CheckingPosition1");
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();

  //  a.exec;
   // return 0;
        //QQuickView viewer;
   // viewer.setSource(QUrl("./qml/main.qml"));
   // viewer.show();

   // MyClass myClass;
   // QQuickItem* item = viewer.rootObject();
   // QObject::connect(item, SIGNAL(buttonClicked()), &myClass, SLOT(mySlot()));
   // QObject::connect(&myClass, SIGNAL(mySignal(QVariant)), item, SLOT(updateGUI(QVariant)));
}

