Simple Haskell API for LMDB
===========================

(Note: this is a fork of `lmdb-simple` from the [upstream
repo](https://github.com/verement/lmdb-simple). This is largely identical to
the original library, but with the following changes:

* The upper version bounds on `bytestring` have been raised.
* The test suite works properly with `cabal v2-test`.
* Warnings that appear on recent versions of GHC have been fixed.

The rest of this `README` is identical to the one in the upstream repo.)

This package allows you to store arbitrary Haskell values in and retrieve them
from a persistent [Lightning Memory-mapped Database][LMDB] on disk.

  [LMDB]: https://symas.com/lightning-memory-mapped-database/

LMDB is a high-performance [ACID][]-compliant no-maintenance read-optimized
key-value store. Any Haskell type with a [`Serialise`][Serialise] instance can
be stored in an LMDB database, or used as a key to index one.

  [ACID]: https://en.wikipedia.org/wiki/ACID
  [Serialise]: https://hackage.haskell.org/package/serialise/docs/Codec-Serialise-Tutorial.html#g:3

This package provides a few different APIs for using LMDB:

  * The basic API provides transactional `put` and `get` functions to store
    and retrieve values from an LMDB database.

  * The extended API provides many functions similar to those in `Data.Map`,
    e.g. `lookup`, `insert`, `delete`, `foldr`, and so on.

  * The `View` API provides a read-only snapshot of an LMDB database that can
    be queried from pure code.

  * The `DBRef` API provides a mutable variable similar to `IORef` that is
    tied to a particular key in an LMDB database.
