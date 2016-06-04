#include <iostream>
#include <string>

#ifndef __INCLUDESHADERS 
#define __INCLUDESHADERS 

#include "gl_includes.h"

std::string textFileRead (const char * filename) ;
void programerrors (const GLint program) ;
void shadererrors (const GLint shader) ;
GLuint initshaders (GLenum type, const char * filename) ;
GLuint initprogram (GLuint vertexshader, GLuint fragmentshader) ;

//extern GLuint vertexBufferObject;
//extern GLuint shaderprogram;

#endif 
