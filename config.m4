dnl $Id$
dnl config.m4 for extension opentracing_driver

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(opentracing_driver, for opentracing_driver support,
dnl Make sure that the comment is aligned:
dnl [  --with-opentracing_driver             Include opentracing_driver support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(opentracing_driver, whether to enable opentracing_driver support,
[  --enable-opentracing_driver           Enable opentracing_driver support])

if test "$PHP_OPENTRACING_DRIVER" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-opentracing_driver -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/opentracing_driver.h"  # you most likely want to change this
  dnl if test -r $PHP_OPENTRACING_DRIVER/$SEARCH_FOR; then # path given as parameter
  dnl   OPENTRACING_DRIVER_DIR=$PHP_OPENTRACING_DRIVER
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for opentracing_driver files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       OPENTRACING_DRIVER_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$OPENTRACING_DRIVER_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the opentracing_driver distribution])
  dnl fi

  dnl # --with-opentracing_driver -> add include path
  dnl PHP_ADD_INCLUDE($OPENTRACING_DRIVER_DIR/include)

  dnl # --with-opentracing_driver -> check for lib and symbol presence
  dnl LIBNAME=opentracing_driver # you may want to change this
  dnl LIBSYMBOL=opentracing_driver # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $OPENTRACING_DRIVER_DIR/$PHP_LIBDIR, OPENTRACING_DRIVER_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_OPENTRACING_DRIVERLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong opentracing_driver lib version or lib not found])
  dnl ],[
  dnl   -L$OPENTRACING_DRIVER_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(OPENTRACING_DRIVER_SHARED_LIBADD)

  PHP_NEW_EXTENSION(opentracing_driver, opentracing_driver.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
