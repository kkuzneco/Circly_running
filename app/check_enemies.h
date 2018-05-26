#ifndef CHECK_ENEMIES_H
#define CHECK_ENEMIES_H
#include <QObject>

class CheckingPosition1: public QObject{
    Q_OBJECT
public:
    int xen[15]={100,654,952,869,654,795,600,480,372,8,100,208,526,298,197};
    int yen[15]={75,148,305,521,675,610,337,71,428,200,694,546,60,770,314};
    int wen=25;
    int hen=25;
public slots:
    bool check_enm(int X, int Y);
};
#endif // CHECK_ENEMIES_H
