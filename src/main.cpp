#include "gbr2ngc.hpp"
#include <unistd.h>
#include <stdio.h>
#include <string>
#include <sstream>
#include <iostream>

int main() {
    std::stringstream brincas;
    brincas << convert_gcode("/home/braz-ubuntu/Github/gbr2ngc/tests/Gerber_TopLayer.GTL", "-v");
    std::cout << "output main" << "\n" << brincas.str();
    // cout
    return 0;
}