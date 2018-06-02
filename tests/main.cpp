#include "tests.h"
#include "test1.h"
#include <gtest/gtest.h>
#include "tests2.h"

int main(int argc, char *argv[])
{
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
