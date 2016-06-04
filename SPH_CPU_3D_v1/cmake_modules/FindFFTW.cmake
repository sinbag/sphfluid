# FFTW_INCLUDE_DIR = fftw3.h
# FFTW_LIBRARIES = libfftw3.a
# FFTW_FOUND = true if FFTW3 is found

IF(FFTW_INCLUDE_DIRS)
FIND_PATH(FFTW_INCLUDE_DIR fftw3.h ${FFTW_INCLUDE_DIRS})
FIND_LIBRARY(FFTW_LIBRARY fftw3 ${FFTW_LIBRARY_DIRS})
ELSE(FFTW_INCLUDE_DIRS)
# SET(TRIAL_PATHS
# $ENV{FFTW_HOME}/include
# /usr/include
# /usr/local/include
# /opt/include
# /usr/apps/include
# )
#
# SET(TRIAL_LIBRARY_PATHS
# $ENV{FFTW_HOME}/lib
# /usr/lib
# /usr/local/lib
# /opt/lib
# /sw/lib
# )
#
# FIND_PATH(FFTW_INCLUDE_DIR fftw3.h ${TRIAL_PATHS})
# FIND_LIBRARY(FFTW_LIBRARY fftw3 ${TRIAL_LIBRARY_PATHS})
SET(FFTW_INCLUDE_DIR /usr/local/include/)
SET(FFTW_LIBRARIES fftw3)

ENDIF(FFTW_INCLUDE_DIRS)

SET(FFTW_FOUND FALSE)
IF(FFTW_INCLUDE_DIR AND FFTW_LIBRARIES)
MESSAGE(STATUS "FFTW_INCLUDE_DIR=${FFTW_INCLUDE_DIR}")
MESSAGE(STATUS "FFTW_LIBRARIES=${FFTW_LIBRARIES}")
SET(FFTW_FOUND TRUE)
ENDIF()

MARK_AS_ADVANCED(
FFTW_INCLUDE_DIR
FFTW_LIBRARIES
FFTW_FOUND
)

