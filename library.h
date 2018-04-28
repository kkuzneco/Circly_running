#ifndef LIBRARY_H
#define LIBRARY_H
//#include <QMainWindow>
//#include <QtDeclarative/QDeclarativeView>
//#include <QGraphicsObject>
#include <QtGui>
//#include <QDeclarativeContext>
#include <QObject>

class Library : public QObject
{
    Q_OBJECT
public:
    explicit Library(QObject *parent = nullptr);

signals:

public slots:
};

#endif // LIBRARY_H
