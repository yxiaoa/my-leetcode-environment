#ifndef LTYPES_H
#define LTYPES_H

typedef _Bool           bool_t;
typedef int             s32;
typedef unsigned int    u32;
typedef unsigned short  u16;
typedef unsigned char   u8;

#ifndef bool
typedef bool_t          bool;
#endif

#ifndef true
#define true            1
#endif

#ifndef false
#define false           0
#endif

#ifndef FALSE
#define FALSE           0U
#endif

#ifndef TRUE
#define TRUE            1U
#endif

#ifndef NULL
#define NULL            (void *)0
#endif

#define ARRAY_SIZE(arr)                 sizeof(arr)/sizeof(arr[0])

#endif
