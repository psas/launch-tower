# Process this file with autoconf to produce a configure script.

AC_INIT([Phidget21 C Examples], m4_esyscmd([./version.sh]), [support@phidgets.com])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_CONFIG_HEADERS([config.h])
AC_CANONICAL_HOST

# Checks for programs.
AC_PROG_CC

# Checks for libraries. uses -framework on MacOS
case $host in
  *darwin*)	EXTRA_LDFLAGS='-framework Phidget21' ;;
  *)		AC_CHECK_LIB([phidget21],[CPhidget_getLibraryVersion]) 
			EXTRA_LDFLAGS='' ;;
esac
AC_SUBST([EXTRA_LDFLAGS])

# Checks for header files. 
AC_CHECK_HEADERS([unistd.h])
# Adds extra header search path for MacOS
case $host in
  *darwin*)	EXTRA_CFLAGS='-I/Library/Frameworks/Phidget21.framework/Headers' ;;
  *)		AC_CHECK_HEADERS([phidget21.h]) 
			EXTRA_CFLAGS='' ;;
esac
AC_SUBST([EXTRA_CFLAGS])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
