#ifndef LIBRARY_H
#define LIBRARY_H
//#include <QMainWindow>
//#include <QtDeclarative/QDeclarativeView>
//#include <QGraphicsObject>
#include <QtGui>
//#include <QDeclarativeContext>
#include <QObject>
#include <list>

class Llibrary : public QObject
{
    Q_OBJECT
  struct Point
       {
           int x, y;
        };
//  class Character
//  {
//  public:
//          /* Get states */
//          int getCurLives();
//          unsigned int getMaxLives();
//          unsigned int getDamage();


//          /* Character gets damage and health */

//          /* Returns true, when character is alive
//           * Returns false, when character is dead
//           */
//          //virtual bool takeDamage(unsigned int amountOfDamage);



//  private:
//          unsigned int maxLives;
//          /* Current health */
//          int curLives;

//  protected:
//          /*Setting*/
//          void setCurHealth(int amountOfCurHealth);
//          void setMaxHealth(unsigned int amountOfMaxHealth);
//          void setWeapon(Weapon* weapon);
//  };
//  class Hero: public Character
//  {
//  public:
//      Hero(unsigned int amountOfMaxHealth, unsigned int maxLevel);


//      unsigned int getGold();
//      bool takeGold(int amountOfGold);
//     unsigned int getHeroicDamage();
////    Level(int heroX, int heroY, unsigned int lives);

//// Enemy* addEnemy(int x, int y);

////       list <EnemyObject*> getListOfMonsters();


public:
    explicit Llibrary(QObject *parent = nullptr);

signals:

public slots:
};

#endif // LIBRARY_H
