# This is an autogenerated file. Do not edit

get_filename_component(_cur_dir ${CMAKE_CURRENT_LIST_FILE} PATH)
set(_root_dir "${_cur_dir}/../../../")
get_filename_component(ROOT_DIR ${_root_dir} ABSOLUTE)

 
set(ALPYTHONTOOLS_INCLUDE_DIRS "${ROOT_DIR}/include;" CACHE STRING "" FORCE)
mark_as_advanced(ALPYTHONTOOLS_INCLUDE_DIRS)
   

find_library(ALPYTHONTOOLS_DEBUG_LIBRARY alpythontools_d)
find_library(ALPYTHONTOOLS_LIBRARY       alpythontools)


if (ALPYTHONTOOLS_DEBUG_LIBRARY)
  set(ALPYTHONTOOLS_LIBRARIES optimized;${ALPYTHONTOOLS_LIBRARY};debug;${ALPYTHONTOOLS_DEBUG_LIBRARY})
else()
  set(ALPYTHONTOOLS_LIBRARIES ${ALPYTHONTOOLS_LIBRARY})
endif()

set(ALPYTHONTOOLS_LIBRARIES ${ALPYTHONTOOLS_LIBRARIES} CACHE INTERNAL "" FORCE)
 
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ALPYTHONTOOLS DEFAULT_MSG
  ALPYTHONTOOLS_LIBRARIES
  ALPYTHONTOOLS_INCLUDE_DIRS
)
set(ALPYTHONTOOLS_PACKAGE_FOUND ${ALPYTHONTOOLS_FOUND} CACHE INTERNAL "" FORCE)
 
set(ALPYTHONTOOLS_DEPENDS "ALVALUE;ALERROR;QIMESSAGING;QITYPE;QI;BOOST_CHRONO;BOOST_FILESYSTEM;BOOST_PROGRAM_OPTIONS;BOOST_REGEX;DL;RT;BOOST_DATE_TIME;BOOST_SYSTEM;BOOST_LOCALE;BOOST_THREAD;PTHREAD;BOOST;PYTHON" CACHE INTERNAL "" FORCE)
 