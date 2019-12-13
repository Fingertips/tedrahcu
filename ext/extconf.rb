require 'mkmf'

dir_config('uchardet')
if pkg_config('uchardet')
  $CFLAGS << ' ' + pkg_config('uchardet', 'cflags')
  $LDFLAGS << ' ' + pkg_config('uchardet', 'libs')
  create_makefile('tedrahcu', 'tedrahcu')
else
  fail <<~MESSAGE
    Could not find Uchardet build information using pkg-config.
    Please make sure both pkg-config and Uchardet are installed. For example:
    
    ** macOS **
    brew install pkg-config uchardet

    ** CentOS **
    yum install uchardet-devel

    ** Debian **
    apt install libuchardet-dev
  MESSAGE
end
