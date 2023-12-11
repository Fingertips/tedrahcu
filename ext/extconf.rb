# frozen_string_literal: true

require 'mkmf'

dir_config('uchardet')
raise <<~MESSAGE unless pkg_config('uchardet')
  Could not find Uchardet build information using pkg-config.
  Please make sure both pkg-config and Uchardet are installed. For example:

  ** macOS **
  brew install pkg-config uchardet

  ** CentOS **
  yum install uchardet-devel

  ** Debian **
  apt install libuchardet-dev
MESSAGE

$CFLAGS << " #{pkg_config('uchardet', 'cflags')}"
$LDFLAGS << " #{pkg_config('uchardet', 'libs')}"
create_makefile('tedrahcu', 'tedrahcu')
