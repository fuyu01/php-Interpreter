dnl $Id$
dnl config.m4 for extension array_sum_new

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(array_sum_new, for array_sum_new support,
dnl Make sure that the comment is aligned:
dnl [  --with-array_sum_new             Include array_sum_new support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(array_sum_new, whether to enable array_sum_new support,
Make sure that the comment is aligned:
[  --enable-array_sum_new           Enable array_sum_new support])

if test "$PHP_ARRAY_SUM_NEW" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-array_sum_new -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/array_sum_new.h"  # you most likely want to change this
  dnl if test -r $PHP_ARRAY_SUM_NEW/$SEARCH_FOR; then # path given as parameter
  dnl   ARRAY_SUM_NEW_DIR=$PHP_ARRAY_SUM_NEW
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for array_sum_new files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       ARRAY_SUM_NEW_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$ARRAY_SUM_NEW_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the array_sum_new distribution])
  dnl fi

  dnl # --with-array_sum_new -> add include path
  dnl PHP_ADD_INCLUDE($ARRAY_SUM_NEW_DIR/include)

  dnl # --with-array_sum_new -> check for lib and symbol presence
  dnl LIBNAME=array_sum_new # you may want to change this
  dnl LIBSYMBOL=array_sum_new # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $ARRAY_SUM_NEW_DIR/$PHP_LIBDIR, ARRAY_SUM_NEW_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_ARRAY_SUM_NEWLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong array_sum_new lib version or lib not found])
  dnl ],[
  dnl   -L$ARRAY_SUM_NEW_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(ARRAY_SUM_NEW_SHARED_LIBADD)

  PHP_NEW_EXTENSION(array_sum_new, array_sum_new.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
