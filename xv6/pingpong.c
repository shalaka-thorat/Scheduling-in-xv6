#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

#define BUFSIZE 512

char buf[BUFSIZE];

void ping_pong(int fd) 
{
   // ------------------------- Write your code here -------------------------
   
   int i, n;
   
   while((n = read(fd, buf, sizeof(buf))) > 0)
   {
      for(i=0; i<n; i++)
      {
         if('p' == buf[i])
         {
            if('i' == buf[i+1])
            {
               if('n' == buf[i+2])
               {
                  if('g' == buf[i+3])
                  {
                     i += 3;
                     printf(1, "pong\n");
                  }
               }
            }
         }
      }
    }
}

int main(int argc, char *argv[])
{
    if (argc != 2) {
        printf(1, "Usage: %s <input_file>\n", argv[0]);
        exit();
    }

    int fd = open(argv[1], O_RDONLY);
    if (fd < 0) {
        printf(1, "Error opening file %s\n", argv[1]);
        exit();
    }

    ping_pong(fd);
    close(fd);

    exit();
}


/*
=================================OUTPUT================================

SeaBIOS (version 1.15.0-1)


iPXE (https://ipxe.org) 00:03.0 CA00 PCI2.10 PnP PMM+1FF8B4A0+1FECB4A0 CA00



Booting from Hard Disk..xv6...
cpu0: starting 0
sb: size 1000 nblocks 941 ninodes 200 nlog 30 logstart 2 inodestart 32 bmap start 58
init: starting sh
$ pingpong pingpong.txt
pong
pong
pong
pong
$
*/

