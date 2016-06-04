//
//  gl_includes.h
//  glsl-shaders
//
//  Created by Gurprit Singh on 21/08/2013.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#ifndef glsl_shaders_gl_includes_h
#define glsl_shaders_gl_includes_h

#ifdef __APPLE__
#include "GL/glew.h"
//#include <openGL/gl.h>
#include <openGL/glu.h>
#include <GLUT/glut.h> /* For Mac OS X */
#include <GLFW/glfw3.h>
#else
#include <GL/gl.h>
#include <GL/glu.h>
//#include <GL/glut.h>
//#include <GL/freeglut.h>   /* For other unix systems */
#endif


#endif
