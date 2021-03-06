-- | Contains sufficient tools to represent linear programming problems in Haskell.  In the future, if linkings to other
-- linear programming libraries are made, this will be common to them all.
module Data.LinearProgram.Common (
        module Data.LinearProgram.Spec,
        module Data.LinearProgram.Types,
        module Data.LinearProgram.LinExpr) where

import Data.LinearProgram.Spec
import Data.LinearProgram.Types
import Data.LinearProgram.LinExpr

import Data.Map
import GHC.Exts (build)

{-# RULES
        "assocs" assocs = \ m -> build (\ c n -> foldWithKey (curry c) n m);
        "elems" elems = \ m -> build (\ c n -> foldWithKey (const c) n m);
        "keys" keys = \ m -> build (\ c n -> foldWithKey (\ k _ -> c k) n m);
        #-}
