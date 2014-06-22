require 'mkmf'
find_library('guile-2.0', "scm_with_guile") or fail "unable to find libguile"
find_header('libguile.h', '/usr/local/include/guile/2.0') or fail "unable to find libguile.h"
create_makefile('beguiler/native')
