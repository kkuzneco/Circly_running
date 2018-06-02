#include <QObject>
#include "checking1.h"
bool CheckingPosition::check_pos(int X, int Y){

    for (int i = 0; i<33; i++)
        if (X>=x[i]-25&&X<=x[i]+w[i]&&Y>=y[i]-25&&Y<=y[i]+h[i])
            return true;
        else  if(X<0||Y<54||X+25>1000||Y+25>800)
                return true;
          return false;
}

