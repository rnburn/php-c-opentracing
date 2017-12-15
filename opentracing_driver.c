#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "php_opentracing_driver.h"

static PHP_FUNCTION(make_tracer);

static const zend_function_entry opentracing_driver_functions[] = {
    PHP_FE(make_tracer, NULL)
    PHP_FE_END
};

zend_module_entry opentracing_driver_module_entry = {
#if ZEND_MODULE_API_NO >= 20010901
    STANDARD_MODULE_HEADER,
#endif
    PHP_OPENTRACING_DRIVER_EXTNAME,
    opentracing_driver_functions,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
#if ZEND_MODULE_API_NO >= 20010901
    PHP_OPENTRACING_DRIVER_VERSION,
#endif
    STANDARD_MODULE_PROPERTIES
};

#ifdef COMPILE_DL_OPENTRACING_DRIVER
ZEND_GET_MODULE(opentracing_driver)
#endif

static PHP_FUNCTION(make_tracer) {
  RETURN_STRING("arfarfyip");
}
