



/* rotate.c
 * 
 */
#include "config.h"
#include "copyright2.h"

#include INC_MACHINE_ENDIAN

#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>
#include <math.h>
#include <errno.h>
#include "Wlib.h"
#include "defs.h"
#include "struct.h"
#include "data.h"
#include "packets.h"

#ifdef ROTATERACE
rotate_dir(unsigned char *d, int r)
{
  (*d) += r;
}

/* general rotation */

void rotate_coord(int *x, int *y, int d, int cx, int cy)

/* values used and returned */
/* degree (pi == 128) */
/* around center point */
{
  register
  int     ox, oy;

  ox = *x;
  oy = *y;

  switch (d)
    {

    case 0:
      return;

    case 64:
    case -192:
      *x = cy - oy + cx;
      *y = ox - cx + cy;
      break;

    case 128:
    case -128:
      *x = cx - ox + cx;
      *y = cy - oy + cy;
      break;

    case 192:
    case -64:
      *x = oy - cy + cx;
      *y = cx - ox + cy;
      break;

    default:
      {
	/* do it the hard way */
	double  dir;
	double  r, dx, dy;
	double  rd = (double) d * 3.1415927 / 128.;

	if (*x != cx || *y != cy)
	  {
	    dx = (double) (*x - cx);
	    dy = (double) (cy - *y);
	    dir = atan2(dx, dy) - 3.1415927 / 2.;
	    r = hypot(dx, dy);
	    dir += rd;
	    *x = (int) (r * cos(dir) + cx);
	    *y = (int) (r * sin(dir) + cy);
	  }
      }
    }
}

#endif
