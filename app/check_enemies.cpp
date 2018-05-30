#include "check_enemies.h"
#include<QObject>
#include<math.h>
bool CheckingPosition1::check_enm(int X, int Y){

    for (int i = 0; i<33; i++)
        if (sqrt((X-xen[i])*(X-xen[i])+(Y-yen[i])*(Y-yen[i]))<=25)
            return true;
         return false;
}
