#include "check_enemies.h"
#include<QObject>
bool CheckingPosition1::check_enm(int X, int Y){

    for (int i = 0; i<33; i++)
        if (X>=xen[i]-30&&X<=xen[i]+wen&&Y>=yen[i]-30&&Y<=yen[i]+hen)
            return true;
        else  if(X<0||Y<38||X+25>1000||Y+25>800)
                return true;
          return false;
}
