#include "types.h"

#include "stat.h"

#include "user.h"

 

int main(int argc, char *argv[])

{

    if (argc < 2)

    {

        printf(1, "Usage: %s <program> [arguments...]\n", argv[0]);

        exit();

    }

    //  --------------------------- Write your code here ---------------------------
    
    int pid = fork();
    
    if(pid==0) // Child Process executes given program
    {
       int i;
       int narg = argc -1;
       char *args[narg];
       
       for(i=0; i<narg; i++)
       {
          args[i] = argv[i+1];
       }
       exec(args[0], args);
       exit();
    }
    else   // Parent Process waits
    {
       wait();
    }
    
    exit();
}

/*
=================================OUTPUT===========================

SeaBIOS (version 1.15.0-1)


iPXE (https://ipxe.org) 00:03.0 CA00 PCI2.10 PnP PMM+1FF8B4A0+1FECB4A0 CA00



Booting from Hard Disk..xv6...
cpu0: starting 0
sb: size 1000 nblocks 941 ninodes 200 nlog 30 logstart 2 inodestart 32 bmap start 58
init: starting sh
$ cmd ls
.              1 1 512
..             1 1 512
README         2 2 2286
cat            2 3 15536
echo           2 4 14420
forktest       2 5 8864
grep           2 6 18380
init           2 7 15040
kill           2 8 14504
ln             2 9 14400
ls             2 10 16968
mkdir          2 11 14528
rm             2 12 14508
sh             2 13 28564
stressfs       2 14 15436
usertests      2 15 62936
wc             2 16 15964
zombie         2 17 14084
pingpong       2 18 15244
cmd            2 19 15012
pingpong.c     2 20 1376
pingpong.txt   2 21 357
cmd.c          2 22 677
console        3 23 0
$ cmd echo hello xv6 os !!
hello xv6 os !!
$
*/

