# 1 "C:\\Project\\MASTER~1\\ADAS_F~1\\Process_Output\\Process_Output.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Project\\MASTER~1\\ADAS_F~1\\Process_Output\\Process_Output.c"







# 1 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 1
# 23 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h"
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 1 3
# 48 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stddef.h" 1 3 4
# 212 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 324 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stddef.h" 3 4
typedef int wchar_t;
# 49 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 2 3
# 70 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 116 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 130 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 153 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 185 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 218 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 252 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 264 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 276 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 288 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 300 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 348 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);
# 361 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern double atof(const char *__nptr);
# 383 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 428 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *itoa (int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__itoa (int, char *, int);
 return __itoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__itoa_ncheck (int, char *, unsigned char);
 return __itoa_ncheck (__val, __s, __radix);
    }
}
# 473 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ltoa (long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ltoa (long, char *, int);
 return __ltoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ltoa_ncheck (long, char *, unsigned char);
 return __ltoa_ncheck (__val, __s, __radix);
    }
}
# 516 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *utoa (unsigned int __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__utoa (unsigned int, char *, int);
 return __utoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__utoa_ncheck (unsigned int, char *, unsigned char);
 return __utoa_ncheck (__val, __s, __radix);
    }
}
# 558 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern __inline__ __attribute__((__gnu_inline__))
char *ultoa (unsigned long __val, char *__s, int __radix)
{
    if (!__builtin_constant_p (__radix)) {
 extern char *__ultoa (unsigned long, char *, int);
 return __ultoa (__val, __s, __radix);
    } else if (__radix < 2 || __radix > 36) {
 *__s = 0;
 return __s;
    } else {
 extern char *__ultoa_ncheck (unsigned long, char *, unsigned char);
 return __ultoa_ncheck (__val, __s, __radix);
    }
}
# 590 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 649 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 666 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 685 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdlib.h" 3
extern int atexit(void (*)(void));
extern int system (const char *);
extern char *getenv (const char *);
# 24 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stdbool.h" 1 3 4
# 25 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 1 3
# 46 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stddef.h" 1 3 4
# 47 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 2 3
# 125 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern int ffs(int __val) __attribute__((__const__));





extern int ffsl(long __val) __attribute__((__const__));





__extension__ extern int ffsll(long long __val) __attribute__((__const__));
# 150 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memccpy(void *, const void *, int, size_t);
# 162 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memchr(const void *, int, size_t) __attribute__((__pure__));
# 180 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern int memcmp(const void *, const void *, size_t) __attribute__((__pure__));
# 191 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memcpy(void *, const void *, size_t);
# 203 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memmem(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 213 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memmove(void *, const void *, size_t);
# 225 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memrchr(const void *, int, size_t) __attribute__((__pure__));
# 235 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern void *memset(void *, int, size_t);
# 248 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strcat(char *, const char *);
# 262 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strchr(const char *, int) __attribute__((__pure__));
# 274 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strchrnul(const char *, int) __attribute__((__pure__));
# 287 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern int strcmp(const char *, const char *) __attribute__((__pure__));
# 305 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strcpy(char *, const char *);
# 320 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern int strcasecmp(const char *, const char *) __attribute__((__pure__));
# 333 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strcasestr(const char *, const char *) __attribute__((__pure__));
# 344 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern size_t strcspn(const char *__s, const char *__reject) __attribute__((__pure__));
# 364 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strdup(const char *s1);
# 377 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern size_t strlcat(char *, const char *, size_t);
# 388 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern size_t strlcpy(char *, const char *, size_t);
# 399 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern size_t strlen(const char *) __attribute__((__pure__));
# 411 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strlwr(char *);
# 422 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strncat(char *, const char *, size_t);
# 434 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern int strncmp(const char *, const char *, size_t) __attribute__((__pure__));
# 449 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strncpy(char *, const char *, size_t);
# 464 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));
# 478 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern size_t strnlen(const char *, size_t) __attribute__((__pure__));
# 491 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strpbrk(const char *__s, const char *__accept) __attribute__((__pure__));
# 505 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strrchr(const char *, int) __attribute__((__pure__));
# 515 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strrev(char *);
# 533 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strsep(char **, const char *);
# 544 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern size_t strspn(const char *__s, const char *__accept) __attribute__((__pure__));
# 557 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strstr(const char *, const char *) __attribute__((__pure__));
# 576 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strtok(char *, const char *);
# 593 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strtok_r(char *, const char *, char **);
# 606 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\string.h" 3
extern char *strupr(char *);



extern int strcoll(const char *s1, const char *s2);
extern char *strerror(int errnum);
extern size_t strxfrm(char *dest, const char *src, size_t n);
# 26 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 1 3
# 127 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double modf(double __x, double *__iptr);


extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));


extern float sqrtf (float) __attribute__((__const__));




extern double cbrt(double __x) __attribute__((__const__));
# 195 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 235 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 299 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 334 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 377 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 393 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 427 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern double round (double __x) __attribute__((__const__));
# 440 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 454 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 27 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2

# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 1 3
# 88 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\inttypes.h" 1 3
# 37 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\inttypes.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stdint.h" 1 3 4
# 9 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stdint.h" 3 4
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h" 1 3 4
# 125 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 146 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 163 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 217 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 277 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 10 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stdint.h" 2 3 4
# 38 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\inttypes.h" 2 3
# 77 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 89 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 2 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\lib\\gcc\\avr\\4.9.2\\include\\stddef.h" 1 3 4
# 90 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 2 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 1 3
# 99 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\sfr_defs.h" 1 3
# 100 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3
# 272 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\iom328p.h" 1 3
# 273 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3
# 627 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 3
# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\portpins.h" 1 3
# 628 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\common.h" 1 3
# 630 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3

# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\version.h" 1 3
# 632 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3






# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\fuse.h" 1 3
# 239 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 639 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3


# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\lock.h" 1 3
# 642 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\io.h" 2 3
# 91 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 2 3
# 1158 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1172 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int memcmp_P(const void *, const void *, size_t) __attribute__((__pure__));






extern void *memccpy_P(void *, const void *, int __val, size_t);
# 1188 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern void *memcpy_P(void *, const void *, size_t);






extern void *memmem_P(const void *, size_t, const void *, size_t) __attribute__((__pure__));
# 1207 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern const void * memrchr_P(const void *, int __val, size_t __len) __attribute__((__const__));
# 1217 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcat_P(char *, const char *);
# 1233 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strchr_P(const char *, int __val) __attribute__((__const__));
# 1245 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strchrnul_P(const char *, int __val) __attribute__((__const__));
# 1258 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strcmp_P(const char *, const char *) __attribute__((__pure__));
# 1268 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcpy_P(char *, const char *);
# 1285 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strcasecmp_P(const char *, const char *) __attribute__((__pure__));






extern char *strcasestr_P(const char *, const char *) __attribute__((__pure__));
# 1305 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strcspn_P(const char *__s, const char * __reject) __attribute__((__pure__));
# 1321 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcat_P (char *, const char *, size_t );
# 1334 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcpy_P (char *, const char *, size_t );
# 1346 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strnlen_P(const char *, size_t) __attribute__((__const__));
# 1357 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strncmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1376 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strncasecmp_P(const char *, const char *, size_t) __attribute__((__pure__));
# 1387 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncat_P(char *, const char *, size_t);
# 1401 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncpy_P(char *, const char *, size_t);
# 1416 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strpbrk_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1427 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern const char * strrchr_P(const char *, int __val) __attribute__((__const__));
# 1447 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strsep_P(char **__sp, const char * __delim);
# 1460 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strspn_P(const char *__s, const char * __accept) __attribute__((__pure__));
# 1474 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strstr_P(const char *, const char *) __attribute__((__pure__));
# 1496 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strtok_P(char *__s, const char * __delim);
# 1516 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strtok_rP(char *__s, const char * __delim, char **__last);
# 1529 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlen_PF(uint_farptr_t src) __attribute__((__const__));
# 1545 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strnlen_PF(uint_farptr_t src, size_t len) __attribute__((__const__));
# 1560 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern void *memcpy_PF(void *dest, uint_farptr_t src, size_t len);
# 1575 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcpy_PF(char *dest, uint_farptr_t src);
# 1595 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncpy_PF(char *dest, uint_farptr_t src, size_t len);
# 1611 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strcat_PF(char *dest, uint_farptr_t src);
# 1632 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcat_PF(char *dst, uint_farptr_t src, size_t siz);
# 1649 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strncat_PF(char *dest, uint_farptr_t src, size_t len);
# 1665 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strcmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1682 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strncmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1698 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strcasecmp_PF(const char *s1, uint_farptr_t s2) __attribute__((__pure__));
# 1716 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int strncasecmp_PF(const char *s1, uint_farptr_t s2, size_t n) __attribute__((__pure__));
# 1732 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern char *strstr_PF(const char *s1, uint_farptr_t s2);
# 1744 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t strlcpy_PF(char *dst, uint_farptr_t src, size_t siz);
# 1760 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern int memcmp_PF(const void *, uint_farptr_t, size_t) __attribute__((__pure__));
# 1779 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\pgmspace.h" 3
extern size_t __strlen_P(const char *) __attribute__((__const__));
__attribute__((__always_inline__)) static __inline__ size_t strlen_P(const char * s);
static __inline__ size_t strlen_P(const char *s) {
  return __builtin_constant_p(__builtin_strlen(s))
     ? __builtin_strlen(s) : __strlen_P(s);
}
# 29 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2

# 1 "c:\\progra~2\\arduino\\hardware\\tools\\avr\\avr\\include\\avr\\interrupt.h" 1 3
# 31 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2

# 1 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/binary.h" 1
# 33 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2





void yield(void);
# 121 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h"
typedef unsigned int word;



typedef _Bool boolean;
typedef uint8_t byte;

void init(void);
void initVariant(void);

int atexit(void (*func)()) __attribute__((weak));

void pinMode(uint8_t, uint8_t);
void digitalWrite(uint8_t, uint8_t);
int digitalRead(uint8_t);
int analogRead(uint8_t);
void analogReference(uint8_t mode);
void analogWrite(uint8_t, int);

unsigned long millis(void);
unsigned long micros(void);
void delay(unsigned long);
void delayMicroseconds(unsigned int us);
unsigned long pulseIn(uint8_t pin, uint8_t state, unsigned long timeout);
unsigned long pulseInLong(uint8_t pin, uint8_t state, unsigned long timeout);

void shiftOut(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder, uint8_t val);
uint8_t shiftIn(uint8_t dataPin, uint8_t clockPin, uint8_t bitOrder);

void attachInterrupt(uint8_t, void (*)(void), int mode);
void detachInterrupt(uint8_t);

void setup(void);
void loop(void);
# 163 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h"
extern const uint16_t __attribute__((__progmem__)) port_to_mode_PGM[];
extern const uint16_t __attribute__((__progmem__)) port_to_input_PGM[];
extern const uint16_t __attribute__((__progmem__)) port_to_output_PGM[];

extern const uint8_t __attribute__((__progmem__)) digital_pin_to_port_PGM[];

extern const uint8_t __attribute__((__progmem__)) digital_pin_to_bit_mask_PGM[];
extern const uint8_t __attribute__((__progmem__)) digital_pin_to_timer_PGM[];
# 257 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h"
# 1 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/variants/standard/pins_arduino.h" 1
# 43 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/variants/standard/pins_arduino.h"
static const uint8_t SS = (10);
static const uint8_t MOSI = (11);
static const uint8_t MISO = (12);
static const uint8_t SCK = (13);




static const uint8_t SDA = (18);
static const uint8_t SCL = (19);
# 65 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/variants/standard/pins_arduino.h"
static const uint8_t A0 = (14);
static const uint8_t A1 = (15);
static const uint8_t A2 = (16);
static const uint8_t A3 = (17);
static const uint8_t A4 = (18);
static const uint8_t A5 = (19);
static const uint8_t A6 = (20);
static const uint8_t A7 = (21);
# 258 "C:\\PROGRA~2\\Arduino/hardware/arduino/avr/cores/arduino/Arduino.h" 2
# 9 "C:\\Project\\MASTER~1\\ADAS_F~1\\Process_Output\\Process_Output.c" 2

# 1 "C:\\Project\\MASTER~1\\ADAS_F~1/config.h" 1
# 11 "C:\\Project\\MASTER~1\\ADAS_F~1\\Process_Output\\Process_Output.c" 2
# 1 "C:\\Project\\MASTER~1\\ADAS_F~1/code.h" 1
# 14 "C:\\Project\\MASTER~1\\ADAS_F~1/code.h"
extern void Calc_Relative_Speed(float Relative_Distance);
extern void Acc_Dec_Dtrmn_Sys(void);
extern void Process_Output(void);
extern void Process_Input(void);
extern void Run_Test_with_Internal_Variable(void);

extern float Relative_Distance;
extern float Relative_Speed;
extern float Speed_SetbyDriver;

extern float Output_Acceleration;
extern int Status_Accel_Decel;
extern int Status_Dec_Inc;

extern float Safety_Distance;

extern unsigned int CC_Enable;
extern unsigned int ACC_Enable;
extern unsigned int CWAS_Enable;
extern unsigned int EBS_Enable;

extern char output_char[31];



extern float Vehicle_Speed;
# 12 "C:\\Project\\MASTER~1\\ADAS_F~1\\Process_Output\\Process_Output.c" 2



void Process_Output(void)
{
 int index = 0;
 output_char[index]= '<';
 {
  int relative_dist = (int)(Relative_Distance* 10) ;
  int rel_dist_count = relative_dist;
  int count=0;
  while(rel_dist_count > 0)
  {
   rel_dist_count /=10;
   count++;

  }
  char str[count+1];
  snprintf(str, sizeof(str), "%d", relative_dist);

  for(int i= 0; i<count; i++)
  {
   index++;
   output_char[index]= str[i];
  }
 }

 index ++;
 output_char[index]= '.';
{
  int veh_speed = (int)(Vehicle_Speed + 0.5f);
  int veh_speed_count = veh_speed;
  int count=0;
  while(veh_speed_count > 0)
  {
   veh_speed_count /=10;
   count++;

  }
  char str[count+1];
  snprintf(str, sizeof(str), "%d", veh_speed);
  for(int i= 0; i<count; i++)
  {
   index++;
   output_char[index]= str[i];
  }
 }
 index ++;
 output_char[index]= '.';

 {
  int rel_speed = (int)(Relative_Speed *10);
  if(rel_speed < 0)
  {
   index ++;
   output_char[index]= '-';
   rel_speed *= -1U;
  }
  int rel_speed_count = rel_speed;
  int count=0;
  while(rel_speed_count > 0)
  {
   rel_speed_count /=10;
   count++;

  }
  char str[count+1];
  snprintf(str, sizeof(str), "%d", rel_speed);
  for(int i= 0; i<count; i++)
  {
   index++;
   output_char[index]= str[i];
  }
 }



 index ++;
 output_char[index]= '.';


 {
  int safe_dist = (int)(Safety_Distance*10);
  int safe_dist_count = safe_dist;
  int count=0;
  while(safe_dist_count > 0)
  {
   safe_dist_count /=10;
   count++;

  }
  char str[count+1];
  snprintf(str, sizeof(str), "%d", safe_dist);
  for(int i= 0; i<count; i++)
  {
   index++;
   output_char[index]= str[i];
  }
 }



 index ++;
 output_char[index]= '.';

 {
  int out_accel = (int)(Output_Acceleration*1000);
  int out_accel_count = out_accel;
  if((Status_Dec_Inc == 0) && (out_accel_count != 0U))
  {
   index ++;
   output_char[index]= '-';
  }
  int count=0;
  while(out_accel_count > 0)
  {
   out_accel_count /=10;
   count++;

  }
  char str[count+1];
  snprintf(str, sizeof(str), "%d", out_accel);
  for(int i= 0; i<count; i++)
  {
   index++;
   output_char[index]= str[i];
  }
 }



 index ++;
 output_char[index]= '.';

 index ++;

 output_char[index]= (char)(Status_Accel_Decel + '0');

 index ++;
 output_char[index]= '>';
 index ++;
 output_char[index]= '\0';


}
