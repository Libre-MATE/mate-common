#!/bin/sh
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

PKG_NAME="mate-common"

(test -f $srcdir/configure.ac) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " top-level $PKG_NAME directory"
    exit 1
}

REQUIRED_AUTOMAKE_VERSION=1.11
REQUIRED_AUTORECONF_VERSION=2.60

. $srcdir/macros/mate-autogen

