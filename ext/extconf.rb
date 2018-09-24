require 'mkmf'

dir_config('uchardet')
$CFLAGS << ' ' + pkg_config('uchardet', 'cflags')
$LDFLAGS << ' ' + pkg_config('uchardet', 'libs')
create_makefile('tedrahcu', 'tedrahcu')