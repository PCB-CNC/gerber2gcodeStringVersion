#include "gbr2ngc.hpp"
#include <unistd.h>
#include <stdio.h>
#include <string>
#include <sstream>
#include <iostream>
long file_size = 0;
char* read_file_to_string(const char* file_path) {
    FILE* file = fopen(file_path, "rb");
    if (!file) {
        return NULL;
    }

    fseek(file, 0, SEEK_END);
    file_size = ftell(file);
    fseek(file, 0, SEEK_SET);

    char* buffer = (char*)malloc((file_size + 1) * sizeof(char));
    fread(buffer, file_size, 1, file);
    buffer[file_size] = '\0';

    fclose(file);

    // printf("buffer=%s", buffer);
    return buffer;
} 

int main() {
    std::string return_gcode;
    char* buffer = (char*) malloc(file_size);
    buffer = read_file_to_string("../tests/Gerber_TopLayer.GTL");
    printf("Numero linhas main: %ld\n", file_size);
    return_gcode = convert_gcode(buffer, "-v", file_size);
    std::cout << "convert" << "\n" << return_gcode << "\n" << "fim" << std::endl;
    // cout
    return 0;
}