#ifndef __EE_PRINTF_H__
#define __EE_PRINTF_H__

#include <stdarg.h>

#ifdef __cplusplus
extern "C"{
#endif /* __cplusplus */
int ee_vsprintf(char *buf, const char *fmt, va_list args);
int ee_sprintf(char *buf, const char *fmt, ...);
int ee_printf(const char *fmt, ...);
#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __EE_PRINTF_H__ */
