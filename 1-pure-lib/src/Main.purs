module Main where

import Prelude

type Name = String

foo :: Name -> String
foo x = "Hello " <> x <> "!"
