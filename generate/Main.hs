module Main (main) where

import Rest.Gen.Types
import qualified Rest.Gen        as Gen
import qualified Rest.Gen.Config as Gen

import qualified Api

main :: IO ()
main = do
  config <- Gen.configFromArgs "ordb-api-gen"
  Gen.generate
    config
    "ORDB"
    Api.api
    [] -- Additional modules to put in the generated cabal file
    [] -- Additional imports in every module, typically used for orphan instances
    [(ModuleName "Data.Text.Internal", ModuleName "Data.Text")]
