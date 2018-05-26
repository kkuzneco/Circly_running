#ifndef CHECK1_H
#define CHECK1_H

#include <gtest/gtest.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include "checking1.h"


TEST(checkingblocks, test1){
  CheckingPosition c1;
  c1.check_pos(100,100);
  SUCCEED();
}
#endif
