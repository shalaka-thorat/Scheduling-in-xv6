
_simulate:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
    	
    printf(1, "Process %d (PID: %d) finished\n", id, pid);
}

int main()
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
    int i;
    for (i=0; i<NUM_PROCESSES; i++)
   e:	31 db                	xor    %ebx,%ebx
{
  10:	51                   	push   %ecx
    {
        int pid = fork(); // Fork child processes
  11:	e8 85 03 00 00       	call   39b <fork>
        if(pid < 0)
  16:	85 c0                	test   %eax,%eax
  18:	78 2e                	js     48 <main+0x48>
        	printf(1, "Fork failed for Child %d\n", i);
        else if(pid == 0) // For Varied Workloads
  1a:	74 41                	je     5d <main+0x5d>
    for (i=0; i<NUM_PROCESSES; i++)
  1c:	83 c3 01             	add    $0x1,%ebx
  1f:	83 fb 05             	cmp    $0x5,%ebx
  22:	75 ed                	jne    11 <main+0x11>
                getpid();*/
        }
    }

    for (i = 0; i < NUM_PROCESSES; i++)
    	wait();
  24:	e8 82 03 00 00       	call   3ab <wait>
  29:	e8 7d 03 00 00       	call   3ab <wait>
  2e:	e8 78 03 00 00       	call   3ab <wait>
  33:	e8 73 03 00 00       	call   3ab <wait>
  38:	e8 6e 03 00 00       	call   3ab <wait>
    	
    exit();
  3d:	e8 61 03 00 00       	call   3a3 <exit>
  42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        	printf(1, "Fork failed for Child %d\n", i);
  48:	83 ec 04             	sub    $0x4,%esp
  4b:	53                   	push   %ebx
  4c:	68 67 08 00 00       	push   $0x867
  51:	6a 01                	push   $0x1
  53:	e8 c8 04 00 00       	call   520 <printf>
  58:	83 c4 10             	add    $0x10,%esp
  5b:	eb bf                	jmp    1c <main+0x1c>
            perform_task3(i, getpid()); // For Singular Workload
  5d:	e8 c1 03 00 00       	call   423 <getpid>
  62:	52                   	push   %edx
  63:	52                   	push   %edx
  64:	50                   	push   %eax
  65:	53                   	push   %ebx
  66:	e8 85 00 00 00       	call   f0 <perform_task3>
            exit();
  6b:	e8 33 03 00 00       	call   3a3 <exit>

00000070 <perform_task1>:
{
  70:	55                   	push   %ebp
  71:	89 e5                	mov    %esp,%ebp
  73:	53                   	push   %ebx
  74:	bb a0 86 01 00       	mov    $0x186a0,%ebx
  79:	83 ec 04             	sub    $0x4,%esp
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    	getpid();
  80:	e8 9e 03 00 00       	call   423 <getpid>
    for (i = 0; i < 100000; i++)
  85:	83 eb 01             	sub    $0x1,%ebx
  88:	75 f6                	jne    80 <perform_task1+0x10>
    printf(1, "Process %d (PID: %d) finished\n", id, pid);
  8a:	ff 75 0c             	push   0xc(%ebp)
  8d:	ff 75 08             	push   0x8(%ebp)
  90:	68 48 08 00 00       	push   $0x848
  95:	6a 01                	push   $0x1
  97:	e8 84 04 00 00       	call   520 <printf>
}
  9c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  9f:	83 c4 10             	add    $0x10,%esp
  a2:	c9                   	leave  
  a3:	c3                   	ret    
  a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  af:	90                   	nop

000000b0 <perform_task2>:
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	53                   	push   %ebx
  b4:	bb a0 86 01 00       	mov    $0x186a0,%ebx
  b9:	83 ec 04             	sub    $0x4,%esp
  bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    	    getpid();
  c0:	e8 5e 03 00 00       	call   423 <getpid>
        for (i = 0; i < 100000; i++)
  c5:	83 eb 01             	sub    $0x1,%ebx
  c8:	75 f6                	jne    c0 <perform_task2+0x10>
    if(!inner_call)
  ca:	8b 45 10             	mov    0x10(%ebp),%eax
  cd:	85 c0                	test   %eax,%eax
  cf:	74 05                	je     d6 <perform_task2+0x26>
}
  d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  d4:	c9                   	leave  
  d5:	c3                   	ret    
        printf(1, "Process %d (PID: %d) finished\n", id, pid);
  d6:	ff 75 0c             	push   0xc(%ebp)
  d9:	ff 75 08             	push   0x8(%ebp)
  dc:	68 48 08 00 00       	push   $0x848
  e1:	6a 01                	push   $0x1
  e3:	e8 38 04 00 00       	call   520 <printf>
}
  e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  eb:	83 c4 10             	add    $0x10,%esp
  ee:	c9                   	leave  
  ef:	c3                   	ret    

000000f0 <perform_task3>:
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	53                   	push   %ebx
  f4:	bb 40 0d 03 00       	mov    $0x30d40,%ebx
  f9:	83 ec 04             	sub    $0x4,%esp
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    	getpid();
 100:	e8 1e 03 00 00       	call   423 <getpid>
    for (i = 0; i < 200000; i++)
 105:	83 eb 01             	sub    $0x1,%ebx
 108:	75 f6                	jne    100 <perform_task3+0x10>
 10a:	bb a0 86 01 00       	mov    $0x186a0,%ebx
 10f:	90                   	nop
    	    getpid();
 110:	e8 0e 03 00 00       	call   423 <getpid>
        for (i = 0; i < 100000; i++)
 115:	83 eb 01             	sub    $0x1,%ebx
 118:	75 f6                	jne    110 <perform_task3+0x20>
 11a:	bb a0 86 01 00       	mov    $0x186a0,%ebx
 11f:	90                   	nop
    	    getpid();
 120:	e8 fe 02 00 00       	call   423 <getpid>
        for (i = 0; i < 100000; i++)
 125:	83 eb 01             	sub    $0x1,%ebx
 128:	75 f6                	jne    120 <perform_task3+0x30>
    printf(1, "Process %d (PID: %d) finished\n", id, pid);
 12a:	ff 75 0c             	push   0xc(%ebp)
 12d:	ff 75 08             	push   0x8(%ebp)
 130:	68 48 08 00 00       	push   $0x848
 135:	6a 01                	push   $0x1
 137:	e8 e4 03 00 00       	call   520 <printf>
}
 13c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 13f:	83 c4 10             	add    $0x10,%esp
 142:	c9                   	leave  
 143:	c3                   	ret    
 144:	66 90                	xchg   %ax,%ax
 146:	66 90                	xchg   %ax,%ax
 148:	66 90                	xchg   %ax,%ax
 14a:	66 90                	xchg   %ax,%ax
 14c:	66 90                	xchg   %ax,%ax
 14e:	66 90                	xchg   %ax,%ax

00000150 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 150:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 151:	31 c0                	xor    %eax,%eax
{
 153:	89 e5                	mov    %esp,%ebp
 155:	53                   	push   %ebx
 156:	8b 4d 08             	mov    0x8(%ebp),%ecx
 159:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 15c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 160:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 164:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 167:	83 c0 01             	add    $0x1,%eax
 16a:	84 d2                	test   %dl,%dl
 16c:	75 f2                	jne    160 <strcpy+0x10>
    ;
  return os;
}
 16e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 171:	89 c8                	mov    %ecx,%eax
 173:	c9                   	leave  
 174:	c3                   	ret    
 175:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000180 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	53                   	push   %ebx
 184:	8b 55 08             	mov    0x8(%ebp),%edx
 187:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 18a:	0f b6 02             	movzbl (%edx),%eax
 18d:	84 c0                	test   %al,%al
 18f:	75 17                	jne    1a8 <strcmp+0x28>
 191:	eb 3a                	jmp    1cd <strcmp+0x4d>
 193:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 197:	90                   	nop
 198:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 19c:	83 c2 01             	add    $0x1,%edx
 19f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1a2:	84 c0                	test   %al,%al
 1a4:	74 1a                	je     1c0 <strcmp+0x40>
    p++, q++;
 1a6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 1a8:	0f b6 19             	movzbl (%ecx),%ebx
 1ab:	38 c3                	cmp    %al,%bl
 1ad:	74 e9                	je     198 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1af:	29 d8                	sub    %ebx,%eax
}
 1b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1b4:	c9                   	leave  
 1b5:	c3                   	ret    
 1b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 1c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1c4:	31 c0                	xor    %eax,%eax
 1c6:	29 d8                	sub    %ebx,%eax
}
 1c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1cb:	c9                   	leave  
 1cc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 1cd:	0f b6 19             	movzbl (%ecx),%ebx
 1d0:	31 c0                	xor    %eax,%eax
 1d2:	eb db                	jmp    1af <strcmp+0x2f>
 1d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1df:	90                   	nop

000001e0 <strlen>:

uint
strlen(const char *s)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1e6:	80 3a 00             	cmpb   $0x0,(%edx)
 1e9:	74 15                	je     200 <strlen+0x20>
 1eb:	31 c0                	xor    %eax,%eax
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
 1f0:	83 c0 01             	add    $0x1,%eax
 1f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1f7:	89 c1                	mov    %eax,%ecx
 1f9:	75 f5                	jne    1f0 <strlen+0x10>
    ;
  return n;
}
 1fb:	89 c8                	mov    %ecx,%eax
 1fd:	5d                   	pop    %ebp
 1fe:	c3                   	ret    
 1ff:	90                   	nop
  for(n = 0; s[n]; n++)
 200:	31 c9                	xor    %ecx,%ecx
}
 202:	5d                   	pop    %ebp
 203:	89 c8                	mov    %ecx,%eax
 205:	c3                   	ret    
 206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20d:	8d 76 00             	lea    0x0(%esi),%esi

00000210 <memset>:

void*
memset(void *dst, int c, uint n)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
 214:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 217:	8b 4d 10             	mov    0x10(%ebp),%ecx
 21a:	8b 45 0c             	mov    0xc(%ebp),%eax
 21d:	89 d7                	mov    %edx,%edi
 21f:	fc                   	cld    
 220:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 222:	8b 7d fc             	mov    -0x4(%ebp),%edi
 225:	89 d0                	mov    %edx,%eax
 227:	c9                   	leave  
 228:	c3                   	ret    
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000230 <strchr>:

char*
strchr(const char *s, char c)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 45 08             	mov    0x8(%ebp),%eax
 236:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 23a:	0f b6 10             	movzbl (%eax),%edx
 23d:	84 d2                	test   %dl,%dl
 23f:	75 12                	jne    253 <strchr+0x23>
 241:	eb 1d                	jmp    260 <strchr+0x30>
 243:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 247:	90                   	nop
 248:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 24c:	83 c0 01             	add    $0x1,%eax
 24f:	84 d2                	test   %dl,%dl
 251:	74 0d                	je     260 <strchr+0x30>
    if(*s == c)
 253:	38 d1                	cmp    %dl,%cl
 255:	75 f1                	jne    248 <strchr+0x18>
      return (char*)s;
  return 0;
}
 257:	5d                   	pop    %ebp
 258:	c3                   	ret    
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 260:	31 c0                	xor    %eax,%eax
}
 262:	5d                   	pop    %ebp
 263:	c3                   	ret    
 264:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 26f:	90                   	nop

00000270 <gets>:

char*
gets(char *buf, int max)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	57                   	push   %edi
 274:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 275:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 278:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 279:	31 db                	xor    %ebx,%ebx
{
 27b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 27e:	eb 27                	jmp    2a7 <gets+0x37>
    cc = read(0, &c, 1);
 280:	83 ec 04             	sub    $0x4,%esp
 283:	6a 01                	push   $0x1
 285:	57                   	push   %edi
 286:	6a 00                	push   $0x0
 288:	e8 2e 01 00 00       	call   3bb <read>
    if(cc < 1)
 28d:	83 c4 10             	add    $0x10,%esp
 290:	85 c0                	test   %eax,%eax
 292:	7e 1d                	jle    2b1 <gets+0x41>
      break;
    buf[i++] = c;
 294:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 298:	8b 55 08             	mov    0x8(%ebp),%edx
 29b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 29f:	3c 0a                	cmp    $0xa,%al
 2a1:	74 1d                	je     2c0 <gets+0x50>
 2a3:	3c 0d                	cmp    $0xd,%al
 2a5:	74 19                	je     2c0 <gets+0x50>
  for(i=0; i+1 < max; ){
 2a7:	89 de                	mov    %ebx,%esi
 2a9:	83 c3 01             	add    $0x1,%ebx
 2ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2af:	7c cf                	jl     280 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 2b1:	8b 45 08             	mov    0x8(%ebp),%eax
 2b4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2bb:	5b                   	pop    %ebx
 2bc:	5e                   	pop    %esi
 2bd:	5f                   	pop    %edi
 2be:	5d                   	pop    %ebp
 2bf:	c3                   	ret    
  buf[i] = '\0';
 2c0:	8b 45 08             	mov    0x8(%ebp),%eax
 2c3:	89 de                	mov    %ebx,%esi
 2c5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 2c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2cc:	5b                   	pop    %ebx
 2cd:	5e                   	pop    %esi
 2ce:	5f                   	pop    %edi
 2cf:	5d                   	pop    %ebp
 2d0:	c3                   	ret    
 2d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop

000002e0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	56                   	push   %esi
 2e4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2e5:	83 ec 08             	sub    $0x8,%esp
 2e8:	6a 00                	push   $0x0
 2ea:	ff 75 08             	push   0x8(%ebp)
 2ed:	e8 f1 00 00 00       	call   3e3 <open>
  if(fd < 0)
 2f2:	83 c4 10             	add    $0x10,%esp
 2f5:	85 c0                	test   %eax,%eax
 2f7:	78 27                	js     320 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2f9:	83 ec 08             	sub    $0x8,%esp
 2fc:	ff 75 0c             	push   0xc(%ebp)
 2ff:	89 c3                	mov    %eax,%ebx
 301:	50                   	push   %eax
 302:	e8 f4 00 00 00       	call   3fb <fstat>
  close(fd);
 307:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 30a:	89 c6                	mov    %eax,%esi
  close(fd);
 30c:	e8 ba 00 00 00       	call   3cb <close>
  return r;
 311:	83 c4 10             	add    $0x10,%esp
}
 314:	8d 65 f8             	lea    -0x8(%ebp),%esp
 317:	89 f0                	mov    %esi,%eax
 319:	5b                   	pop    %ebx
 31a:	5e                   	pop    %esi
 31b:	5d                   	pop    %ebp
 31c:	c3                   	ret    
 31d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 320:	be ff ff ff ff       	mov    $0xffffffff,%esi
 325:	eb ed                	jmp    314 <stat+0x34>
 327:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32e:	66 90                	xchg   %ax,%ax

00000330 <atoi>:

int
atoi(const char *s)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 337:	0f be 02             	movsbl (%edx),%eax
 33a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 33d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 340:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 345:	77 1e                	ja     365 <atoi+0x35>
 347:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 350:	83 c2 01             	add    $0x1,%edx
 353:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 356:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 35a:	0f be 02             	movsbl (%edx),%eax
 35d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 360:	80 fb 09             	cmp    $0x9,%bl
 363:	76 eb                	jbe    350 <atoi+0x20>
  return n;
}
 365:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 368:	89 c8                	mov    %ecx,%eax
 36a:	c9                   	leave  
 36b:	c3                   	ret    
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000370 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	8b 45 10             	mov    0x10(%ebp),%eax
 377:	8b 55 08             	mov    0x8(%ebp),%edx
 37a:	56                   	push   %esi
 37b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 37e:	85 c0                	test   %eax,%eax
 380:	7e 13                	jle    395 <memmove+0x25>
 382:	01 d0                	add    %edx,%eax
  dst = vdst;
 384:	89 d7                	mov    %edx,%edi
 386:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 390:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 391:	39 f8                	cmp    %edi,%eax
 393:	75 fb                	jne    390 <memmove+0x20>
  return vdst;
}
 395:	5e                   	pop    %esi
 396:	89 d0                	mov    %edx,%eax
 398:	5f                   	pop    %edi
 399:	5d                   	pop    %ebp
 39a:	c3                   	ret    

0000039b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 39b:	b8 01 00 00 00       	mov    $0x1,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret    

000003a3 <exit>:
SYSCALL(exit)
 3a3:	b8 02 00 00 00       	mov    $0x2,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret    

000003ab <wait>:
SYSCALL(wait)
 3ab:	b8 03 00 00 00       	mov    $0x3,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret    

000003b3 <pipe>:
SYSCALL(pipe)
 3b3:	b8 04 00 00 00       	mov    $0x4,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret    

000003bb <read>:
SYSCALL(read)
 3bb:	b8 05 00 00 00       	mov    $0x5,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret    

000003c3 <write>:
SYSCALL(write)
 3c3:	b8 10 00 00 00       	mov    $0x10,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret    

000003cb <close>:
SYSCALL(close)
 3cb:	b8 15 00 00 00       	mov    $0x15,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret    

000003d3 <kill>:
SYSCALL(kill)
 3d3:	b8 06 00 00 00       	mov    $0x6,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret    

000003db <exec>:
SYSCALL(exec)
 3db:	b8 07 00 00 00       	mov    $0x7,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret    

000003e3 <open>:
SYSCALL(open)
 3e3:	b8 0f 00 00 00       	mov    $0xf,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret    

000003eb <mknod>:
SYSCALL(mknod)
 3eb:	b8 11 00 00 00       	mov    $0x11,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret    

000003f3 <unlink>:
SYSCALL(unlink)
 3f3:	b8 12 00 00 00       	mov    $0x12,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret    

000003fb <fstat>:
SYSCALL(fstat)
 3fb:	b8 08 00 00 00       	mov    $0x8,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret    

00000403 <link>:
SYSCALL(link)
 403:	b8 13 00 00 00       	mov    $0x13,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret    

0000040b <mkdir>:
SYSCALL(mkdir)
 40b:	b8 14 00 00 00       	mov    $0x14,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret    

00000413 <chdir>:
SYSCALL(chdir)
 413:	b8 09 00 00 00       	mov    $0x9,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret    

0000041b <dup>:
SYSCALL(dup)
 41b:	b8 0a 00 00 00       	mov    $0xa,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret    

00000423 <getpid>:
SYSCALL(getpid)
 423:	b8 0b 00 00 00       	mov    $0xb,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret    

0000042b <sbrk>:
SYSCALL(sbrk)
 42b:	b8 0c 00 00 00       	mov    $0xc,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret    

00000433 <sleep>:
SYSCALL(sleep)
 433:	b8 0d 00 00 00       	mov    $0xd,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret    

0000043b <uptime>:
SYSCALL(uptime)
 43b:	b8 0e 00 00 00       	mov    $0xe,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret    

00000443 <set_priority>:
SYSCALL (set_priority)
 443:	b8 16 00 00 00       	mov    $0x16,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret    

0000044b <print_ptable>:
SYSCALL (print_ptable)
 44b:	b8 17 00 00 00       	mov    $0x17,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret    

00000453 <fork_with_priority>:
SYSCALL (fork_with_priority)
 453:	b8 18 00 00 00       	mov    $0x18,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret    

0000045b <get_priority>:
SYSCALL (get_priority)
 45b:	b8 19 00 00 00       	mov    $0x19,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret    
 463:	66 90                	xchg   %ax,%ax
 465:	66 90                	xchg   %ax,%ax
 467:	66 90                	xchg   %ax,%ax
 469:	66 90                	xchg   %ax,%ax
 46b:	66 90                	xchg   %ax,%ax
 46d:	66 90                	xchg   %ax,%ax
 46f:	90                   	nop

00000470 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	56                   	push   %esi
 475:	53                   	push   %ebx
 476:	83 ec 3c             	sub    $0x3c,%esp
 479:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 47c:	89 d1                	mov    %edx,%ecx
{
 47e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 481:	85 d2                	test   %edx,%edx
 483:	0f 89 7f 00 00 00    	jns    508 <printint+0x98>
 489:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 48d:	74 79                	je     508 <printint+0x98>
    neg = 1;
 48f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 496:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 498:	31 db                	xor    %ebx,%ebx
 49a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4a0:	89 c8                	mov    %ecx,%eax
 4a2:	31 d2                	xor    %edx,%edx
 4a4:	89 cf                	mov    %ecx,%edi
 4a6:	f7 75 c4             	divl   -0x3c(%ebp)
 4a9:	0f b6 92 e0 08 00 00 	movzbl 0x8e0(%edx),%edx
 4b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 4b3:	89 d8                	mov    %ebx,%eax
 4b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 4b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 4bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 4be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 4c1:	76 dd                	jbe    4a0 <printint+0x30>
  if(neg)
 4c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 4c6:	85 c9                	test   %ecx,%ecx
 4c8:	74 0c                	je     4d6 <printint+0x66>
    buf[i++] = '-';
 4ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 4cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 4d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 4d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 4d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 4dd:	eb 07                	jmp    4e6 <printint+0x76>
 4df:	90                   	nop
    putc(fd, buf[i]);
 4e0:	0f b6 13             	movzbl (%ebx),%edx
 4e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 4e6:	83 ec 04             	sub    $0x4,%esp
 4e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 4ec:	6a 01                	push   $0x1
 4ee:	56                   	push   %esi
 4ef:	57                   	push   %edi
 4f0:	e8 ce fe ff ff       	call   3c3 <write>
  while(--i >= 0)
 4f5:	83 c4 10             	add    $0x10,%esp
 4f8:	39 de                	cmp    %ebx,%esi
 4fa:	75 e4                	jne    4e0 <printint+0x70>
}
 4fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ff:	5b                   	pop    %ebx
 500:	5e                   	pop    %esi
 501:	5f                   	pop    %edi
 502:	5d                   	pop    %ebp
 503:	c3                   	ret    
 504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 508:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 50f:	eb 87                	jmp    498 <printint+0x28>
 511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 518:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51f:	90                   	nop

00000520 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	56                   	push   %esi
 525:	53                   	push   %ebx
 526:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 529:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 52c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 52f:	0f b6 13             	movzbl (%ebx),%edx
 532:	84 d2                	test   %dl,%dl
 534:	74 6a                	je     5a0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 536:	8d 45 10             	lea    0x10(%ebp),%eax
 539:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 53c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 53f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 541:	89 45 d0             	mov    %eax,-0x30(%ebp)
 544:	eb 36                	jmp    57c <printf+0x5c>
 546:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54d:	8d 76 00             	lea    0x0(%esi),%esi
 550:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 553:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 558:	83 f8 25             	cmp    $0x25,%eax
 55b:	74 15                	je     572 <printf+0x52>
  write(fd, &c, 1);
 55d:	83 ec 04             	sub    $0x4,%esp
 560:	88 55 e7             	mov    %dl,-0x19(%ebp)
 563:	6a 01                	push   $0x1
 565:	57                   	push   %edi
 566:	56                   	push   %esi
 567:	e8 57 fe ff ff       	call   3c3 <write>
 56c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 56f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 572:	0f b6 13             	movzbl (%ebx),%edx
 575:	83 c3 01             	add    $0x1,%ebx
 578:	84 d2                	test   %dl,%dl
 57a:	74 24                	je     5a0 <printf+0x80>
    c = fmt[i] & 0xff;
 57c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 57f:	85 c9                	test   %ecx,%ecx
 581:	74 cd                	je     550 <printf+0x30>
      }
    } else if(state == '%'){
 583:	83 f9 25             	cmp    $0x25,%ecx
 586:	75 ea                	jne    572 <printf+0x52>
      if(c == 'd'){
 588:	83 f8 25             	cmp    $0x25,%eax
 58b:	0f 84 07 01 00 00    	je     698 <printf+0x178>
 591:	83 e8 63             	sub    $0x63,%eax
 594:	83 f8 15             	cmp    $0x15,%eax
 597:	77 17                	ja     5b0 <printf+0x90>
 599:	ff 24 85 88 08 00 00 	jmp    *0x888(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a3:	5b                   	pop    %ebx
 5a4:	5e                   	pop    %esi
 5a5:	5f                   	pop    %edi
 5a6:	5d                   	pop    %ebp
 5a7:	c3                   	ret    
 5a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop
  write(fd, &c, 1);
 5b0:	83 ec 04             	sub    $0x4,%esp
 5b3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 5b6:	6a 01                	push   $0x1
 5b8:	57                   	push   %edi
 5b9:	56                   	push   %esi
 5ba:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5be:	e8 00 fe ff ff       	call   3c3 <write>
        putc(fd, c);
 5c3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 5c7:	83 c4 0c             	add    $0xc,%esp
 5ca:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5cd:	6a 01                	push   $0x1
 5cf:	57                   	push   %edi
 5d0:	56                   	push   %esi
 5d1:	e8 ed fd ff ff       	call   3c3 <write>
        putc(fd, c);
 5d6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 5d9:	31 c9                	xor    %ecx,%ecx
 5db:	eb 95                	jmp    572 <printf+0x52>
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 5e0:	83 ec 0c             	sub    $0xc,%esp
 5e3:	b9 10 00 00 00       	mov    $0x10,%ecx
 5e8:	6a 00                	push   $0x0
 5ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
 5ed:	8b 10                	mov    (%eax),%edx
 5ef:	89 f0                	mov    %esi,%eax
 5f1:	e8 7a fe ff ff       	call   470 <printint>
        ap++;
 5f6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 5fa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 5fd:	31 c9                	xor    %ecx,%ecx
 5ff:	e9 6e ff ff ff       	jmp    572 <printf+0x52>
 604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 608:	8b 45 d0             	mov    -0x30(%ebp),%eax
 60b:	8b 10                	mov    (%eax),%edx
        ap++;
 60d:	83 c0 04             	add    $0x4,%eax
 610:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 613:	85 d2                	test   %edx,%edx
 615:	0f 84 8d 00 00 00    	je     6a8 <printf+0x188>
        while(*s != 0){
 61b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 61e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 620:	84 c0                	test   %al,%al
 622:	0f 84 4a ff ff ff    	je     572 <printf+0x52>
 628:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 62b:	89 d3                	mov    %edx,%ebx
 62d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 630:	83 ec 04             	sub    $0x4,%esp
          s++;
 633:	83 c3 01             	add    $0x1,%ebx
 636:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 639:	6a 01                	push   $0x1
 63b:	57                   	push   %edi
 63c:	56                   	push   %esi
 63d:	e8 81 fd ff ff       	call   3c3 <write>
        while(*s != 0){
 642:	0f b6 03             	movzbl (%ebx),%eax
 645:	83 c4 10             	add    $0x10,%esp
 648:	84 c0                	test   %al,%al
 64a:	75 e4                	jne    630 <printf+0x110>
      state = 0;
 64c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 64f:	31 c9                	xor    %ecx,%ecx
 651:	e9 1c ff ff ff       	jmp    572 <printf+0x52>
 656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 660:	83 ec 0c             	sub    $0xc,%esp
 663:	b9 0a 00 00 00       	mov    $0xa,%ecx
 668:	6a 01                	push   $0x1
 66a:	e9 7b ff ff ff       	jmp    5ea <printf+0xca>
 66f:	90                   	nop
        putc(fd, *ap);
 670:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 673:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 676:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 678:	6a 01                	push   $0x1
 67a:	57                   	push   %edi
 67b:	56                   	push   %esi
        putc(fd, *ap);
 67c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 67f:	e8 3f fd ff ff       	call   3c3 <write>
        ap++;
 684:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 688:	83 c4 10             	add    $0x10,%esp
      state = 0;
 68b:	31 c9                	xor    %ecx,%ecx
 68d:	e9 e0 fe ff ff       	jmp    572 <printf+0x52>
 692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 698:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 69b:	83 ec 04             	sub    $0x4,%esp
 69e:	e9 2a ff ff ff       	jmp    5cd <printf+0xad>
 6a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6a7:	90                   	nop
          s = "(null)";
 6a8:	ba 81 08 00 00       	mov    $0x881,%edx
        while(*s != 0){
 6ad:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6b0:	b8 28 00 00 00       	mov    $0x28,%eax
 6b5:	89 d3                	mov    %edx,%ebx
 6b7:	e9 74 ff ff ff       	jmp    630 <printf+0x110>
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c1:	a1 14 0c 00 00       	mov    0xc14,%eax
{
 6c6:	89 e5                	mov    %esp,%ebp
 6c8:	57                   	push   %edi
 6c9:	56                   	push   %esi
 6ca:	53                   	push   %ebx
 6cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6d8:	89 c2                	mov    %eax,%edx
 6da:	8b 00                	mov    (%eax),%eax
 6dc:	39 ca                	cmp    %ecx,%edx
 6de:	73 30                	jae    710 <free+0x50>
 6e0:	39 c1                	cmp    %eax,%ecx
 6e2:	72 04                	jb     6e8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6e4:	39 c2                	cmp    %eax,%edx
 6e6:	72 f0                	jb     6d8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6ee:	39 f8                	cmp    %edi,%eax
 6f0:	74 30                	je     722 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 6f2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6f5:	8b 42 04             	mov    0x4(%edx),%eax
 6f8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6fb:	39 f1                	cmp    %esi,%ecx
 6fd:	74 3a                	je     739 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 6ff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 701:	5b                   	pop    %ebx
  freep = p;
 702:	89 15 14 0c 00 00    	mov    %edx,0xc14
}
 708:	5e                   	pop    %esi
 709:	5f                   	pop    %edi
 70a:	5d                   	pop    %ebp
 70b:	c3                   	ret    
 70c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 710:	39 c2                	cmp    %eax,%edx
 712:	72 c4                	jb     6d8 <free+0x18>
 714:	39 c1                	cmp    %eax,%ecx
 716:	73 c0                	jae    6d8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 718:	8b 73 fc             	mov    -0x4(%ebx),%esi
 71b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 71e:	39 f8                	cmp    %edi,%eax
 720:	75 d0                	jne    6f2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 722:	03 70 04             	add    0x4(%eax),%esi
 725:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 728:	8b 02                	mov    (%edx),%eax
 72a:	8b 00                	mov    (%eax),%eax
 72c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 72f:	8b 42 04             	mov    0x4(%edx),%eax
 732:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 735:	39 f1                	cmp    %esi,%ecx
 737:	75 c6                	jne    6ff <free+0x3f>
    p->s.size += bp->s.size;
 739:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 73c:	89 15 14 0c 00 00    	mov    %edx,0xc14
    p->s.size += bp->s.size;
 742:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 745:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 748:	89 0a                	mov    %ecx,(%edx)
}
 74a:	5b                   	pop    %ebx
 74b:	5e                   	pop    %esi
 74c:	5f                   	pop    %edi
 74d:	5d                   	pop    %ebp
 74e:	c3                   	ret    
 74f:	90                   	nop

00000750 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 759:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 75c:	8b 3d 14 0c 00 00    	mov    0xc14,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 762:	8d 70 07             	lea    0x7(%eax),%esi
 765:	c1 ee 03             	shr    $0x3,%esi
 768:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 76b:	85 ff                	test   %edi,%edi
 76d:	0f 84 9d 00 00 00    	je     810 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 773:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 775:	8b 4a 04             	mov    0x4(%edx),%ecx
 778:	39 f1                	cmp    %esi,%ecx
 77a:	73 6a                	jae    7e6 <malloc+0x96>
 77c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 781:	39 de                	cmp    %ebx,%esi
 783:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 786:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 78d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 790:	eb 17                	jmp    7a9 <malloc+0x59>
 792:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 798:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 79a:	8b 48 04             	mov    0x4(%eax),%ecx
 79d:	39 f1                	cmp    %esi,%ecx
 79f:	73 4f                	jae    7f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7a1:	8b 3d 14 0c 00 00    	mov    0xc14,%edi
 7a7:	89 c2                	mov    %eax,%edx
 7a9:	39 d7                	cmp    %edx,%edi
 7ab:	75 eb                	jne    798 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7ad:	83 ec 0c             	sub    $0xc,%esp
 7b0:	ff 75 e4             	push   -0x1c(%ebp)
 7b3:	e8 73 fc ff ff       	call   42b <sbrk>
  if(p == (char*)-1)
 7b8:	83 c4 10             	add    $0x10,%esp
 7bb:	83 f8 ff             	cmp    $0xffffffff,%eax
 7be:	74 1c                	je     7dc <malloc+0x8c>
  hp->s.size = nu;
 7c0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7c3:	83 ec 0c             	sub    $0xc,%esp
 7c6:	83 c0 08             	add    $0x8,%eax
 7c9:	50                   	push   %eax
 7ca:	e8 f1 fe ff ff       	call   6c0 <free>
  return freep;
 7cf:	8b 15 14 0c 00 00    	mov    0xc14,%edx
      if((p = morecore(nunits)) == 0)
 7d5:	83 c4 10             	add    $0x10,%esp
 7d8:	85 d2                	test   %edx,%edx
 7da:	75 bc                	jne    798 <malloc+0x48>
        return 0;
  }
}
 7dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7df:	31 c0                	xor    %eax,%eax
}
 7e1:	5b                   	pop    %ebx
 7e2:	5e                   	pop    %esi
 7e3:	5f                   	pop    %edi
 7e4:	5d                   	pop    %ebp
 7e5:	c3                   	ret    
    if(p->s.size >= nunits){
 7e6:	89 d0                	mov    %edx,%eax
 7e8:	89 fa                	mov    %edi,%edx
 7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 7f0:	39 ce                	cmp    %ecx,%esi
 7f2:	74 4c                	je     840 <malloc+0xf0>
        p->s.size -= nunits;
 7f4:	29 f1                	sub    %esi,%ecx
 7f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7fc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 7ff:	89 15 14 0c 00 00    	mov    %edx,0xc14
}
 805:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 808:	83 c0 08             	add    $0x8,%eax
}
 80b:	5b                   	pop    %ebx
 80c:	5e                   	pop    %esi
 80d:	5f                   	pop    %edi
 80e:	5d                   	pop    %ebp
 80f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 810:	c7 05 14 0c 00 00 18 	movl   $0xc18,0xc14
 817:	0c 00 00 
    base.s.size = 0;
 81a:	bf 18 0c 00 00       	mov    $0xc18,%edi
    base.s.ptr = freep = prevp = &base;
 81f:	c7 05 18 0c 00 00 18 	movl   $0xc18,0xc18
 826:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 829:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 82b:	c7 05 1c 0c 00 00 00 	movl   $0x0,0xc1c
 832:	00 00 00 
    if(p->s.size >= nunits){
 835:	e9 42 ff ff ff       	jmp    77c <malloc+0x2c>
 83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 840:	8b 08                	mov    (%eax),%ecx
 842:	89 0a                	mov    %ecx,(%edx)
 844:	eb b9                	jmp    7ff <malloc+0xaf>
