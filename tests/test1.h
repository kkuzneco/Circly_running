#ifndef TEST1_H
#define TEST1_H

#include <gtest/gtest.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include "check_enemies.h"
CheckingPosition1 d1;

TEST(checking_enemies, test1){
  d1.check_enm(100,100);
  SUCCEED();
}
TEST(checking_enemies, test2){
  EXPECT_EQ(d1.check_enm(200,200), true);
}
TEST(checking_enemies, test3){
  EXPECT_EQ(d1.check_enm(600,337), true);
}
TEST(checking_enemies, test4){
  EXPECT_EQ(d1.check_enm(198,315), true);
}
TEST(checking_enemies, test5){
  EXPECT_EQ(d1.check_enm(198,315), true);
}
#endif // TEST1_H
