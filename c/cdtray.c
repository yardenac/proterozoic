#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/cdrom.h>
#include <errno.h>
#include <string.h>

int main(int argc, char **argv) {
  int cddrive, ioret;
  cddrive = open(argv[1], O_RDONLY | O_NONBLOCK);
  ioret = ioctl(cddrive, CDROM_DRIVE_STATUS, 0);
  switch(ioret) {
  case CDS_NO_INFO:
	 printf("Information not available\n"); break;
  case CDS_NO_DISC:
	 printf("No disc\n"); break;
  case CDS_TRAY_OPEN:
	 printf("Tray is open\n"); break;
  case CDS_DRIVE_NOT_READY:
	 printf("Drive not ready\n"); break;
  case CDS_DISC_OK:
	 printf("Disc ok\n"); exit(EXIT_SUCCESS);
  case -1:
	 printf("Error: %s\n",strerror(errno)); break;
  default:
	 printf("No idea what happened\n");
  }
  exit(EXIT_FAILURE);
}
