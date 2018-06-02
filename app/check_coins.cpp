//#include "check_coins.h"

//check_coins::check_coins()
//{

//}
#include <QObject>
#include "checking1.h"
int CheckingPosition::if_coin(int X, int Y, bool n){
    if(n){
    for (int i = 0; i<27; i++)
        m[i] = 0;
         }
    for (int i = 0; i<27; i++){
        if ((X>=coinx[i]-25&&X<=coinx[i]+25&&Y>=coiny[i]-25&&Y<=coiny[i]+25)&&(m[i] == 0)){
            m[i] = 1;
            return i;
        }
    }
    return -1;
}
