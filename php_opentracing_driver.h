#ifndef PHP_OPENTRACING_DRIVER
#define PHP_OPENTRACING_DRIVER

#include "php_version.h"
#define PHP_OPENTRACING_DRIVER_VERSION "0.1"
#define PHP_OPENTRACING_DRIVER_EXTNAME "opentracing_driver"

extern zend_module_entry opentracing_driver_module_entry;
#define phpext_hello_ptr &opentracing_driver_module_entry

#endif // PHP_OPENTRACING_DRIVER
