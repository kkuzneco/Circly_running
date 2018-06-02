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

//bool CheckingPosition::if_coin(int X, int Y){//Функция проверяет, находится ли герой рядом с монетой(выполняесть только для левой вержней монетки,
//    //если она исчезла, то с началом новой игры не появляется обратно. Надо что-то придумать, но хз что
//  if (X>=8&&X<=33&&Y>=60&&Y<=85&&!q){
//     q=1;
//    return true;
//  }
//else{
//      return false;
//}
//}

