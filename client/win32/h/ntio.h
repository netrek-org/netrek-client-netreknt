/* Include file to map Microsoft Visual C++ 4.0 io.h stuff from
 * _functionname to functionname */

#include <io.h>

#define read   _read
#define close  _close
#define access _access
#define unlink _unlink
