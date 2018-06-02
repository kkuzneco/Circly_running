#ifndef TESTS2_H
#define TESTS2_H

#include <gtest/gtest.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include "checking1.h"
CheckingPosition m1;

TEST(checkingcoins, test1){
  m1.if_coin(100,100);
  SUCCEED();
}
TEST(checkingcoins, test2){
  EXPECT_EQ(m1.if_coin(400,300), -1);
}
TEST(checkingcoins, test3){
  EXPECT_EQ(m1.if_coin(230,65), 2);
}
TEST(checkingcoins, test4){
  EXPECT_EQ(m1.if_coin(885,210), 25);
}
TEST(checkingcoins, test5){
  EXPECT_EQ(m1.if_coin(10,400), 6);
}

#endif // TESTS2_H
