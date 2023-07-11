# `lmdb`

This is a fork of the [Haskell `lmdb`
library](https://hackage.haskell.org/package/lmdb), which provides bindings to
the C library of the same name. The upstream library is (unfortunately) no
longer maintained, so this fork makes a number of small improvements, including:

* By default, this statically links against a bundled copy of the `lmdb` C
  library, which avoids the need for users to install `lmdb` themselves.
  Currently, version 0.9.29 of `lmdb` is bundled. This behavior can be toggled
  by opting into the `-fpkg-config` `cabal` flag, which instead uses the
  `pkg-config` tool to locate a foreign `lmdb` library installed on your
  system.
* The code builds warning-free with recent versions of GHC.
