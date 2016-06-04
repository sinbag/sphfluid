#ifndef FRAMEWORK_H
#define FRAMEWORK_H
#include <string>

void initialize_program(std::string pathprefix);
void initialize_vertex_buffer();
void init();
void display();
void reshape(int width,int height);
void keyboard(unsigned char key, int x, int y);

#endif
