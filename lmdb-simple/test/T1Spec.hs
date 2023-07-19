{-# LANGUAGE TemplateHaskell #-}
-- | A regression test for https://github.com/GaloisInc/lmdb/issues/1. All of
-- the interesting action happens in the Template Haskell splice that is run at
-- compile time, which is the simplest way to test the behavior of GHC's runtime
-- linker.
module T1Spec (main, spec) where

import Control.Exception (assert)
import Database.LMDB.Simple (Limits(..), defaultLimits)
import Test.Hspec (Spec, hspec)

main :: IO ()
main = hspec spec

spec :: Spec
spec = return ()

$(assert (maxDatabases defaultLimits == 0) (return []))
