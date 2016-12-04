package = 'luaposix'
version = 'git-1'

description = {
  summary = 'Lua bindings for POSIX',
  detailed = [[
    A library binding various POSIX APIs. POSIX is the IEEE Portable
    Operating System Interface standard. luaposix is based on lposix.
  ]],
  homepage = 'http://github.com/luaposix/luaposix/',
  license = 'MIT/X11',
}

source = {
  url = 'git://github.com/luaposix/luaposix.git',
}

dependencies = {
  'lua >= 5.1, < 5.4',
  'bit32',
}

build = {
  type = 'command',
  build_command = 'bin/luke'
    .. ' PACKAGE="' .. package .. '"'
    .. ' VERSION="' .. version .. '"'
    .. ' PREFIX="$(PREFIX)"'
    .. ' LUA="$(LUA)"'
    .. ' LUA_INCDIR="$(LUA_INCDIR)"'
    .. ' CFLAGS="$(CFLAGS)"'
    .. ' LIBFLAG="$(LIBFLAG)"'
    .. ' LIB_EXTENSION="$(LIB_EXTENSION)"'
    .. ' OBJ_EXTENSION="$(OBJ_EXTENSION)"'
    .. ' INST_LIBDIR="$(LIBDIR)"'
    .. ' INST_LUADIR="$(LUADIR)"'
    ,
  install_command = 'bin/luke install'
    .. ' INST_LIBDIR="$(LIBDIR)"'
    .. ' INST_LUADIR="$(LUADIR)"'
    ,
}
