#!/usr/bin/env bash

NEW_PATH=""
PERL_VERSIONS="5.14 5.22"
for x in $PERL_VERSIONS; do
    DIRS="/usr/local/lib/perl5/vendor_perl/$x \
    /usr/local/lib/perl5/vendor_perl/$x/x86_64-cygwin-threads \
    /usr/local/lib/perl5/site_perl/$x \
    /usr/local/lib/perl5/site_perl/$x/x86_64-cygwin-threads"
    for mydir in $DIRS; do
        if [ -d "$mydir" ]; then
            NEW_PATH="$mydir:$NEW_PATH"
        fi
    done
done

if [ "x$NEW_PATH" != "x" ]; then
    NEW_PATH=`echo $NEW_PATH | sed 's/[:]$//g'`
    if [ "x$PERL5LIB" != "x" ]; then
        export PERL5LIB="$NEW_PATH:$PERL5LIB"
    else
        export PERL5LIB="$NEW_PATH"
    fi
fi
