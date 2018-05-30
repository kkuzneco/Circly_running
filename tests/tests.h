#ifndef CHECK1_H
#define CHECK1_H

#include <gtest/gtest.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include "checking1.h"
CheckingPosition c1;

TEST(checkingblocks, test1){
  c1.check_pos(100,100);
  SUCCEED();
}
TEST(checkingblocks, test2){
  EXPECT_EQ(c1.check_pos(100,100), false);
}
TEST(checkingblocks, test3){
  EXPECT_EQ(c1.check_pos(0,-1), true);
}
TEST(checkingblocks, test4){
  EXPECT_EQ(c1.check_pos(256,13), true);
}
TEST(checkingblocks, test5){
  EXPECT_EQ(c1.check_pos(125,719), false);
}

#endif
