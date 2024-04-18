module Data.Money.Discrete
  ( Discrete(..)
  ) where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Newtype (class Newtype)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Type.Proxy (Proxy(..))

newtype Discrete (currency :: Symbol) (unit :: Symbol) = Discrete Int

derive instance Eq (Discrete c u)
derive instance Ord (Discrete c u)
derive instance Generic (Discrete c u) _
derive instance Newtype (Discrete c u) _

derive newtype instance Semiring (Discrete c u)
derive newtype instance Ring (Discrete c u)
derive newtype instance CommutativeRing (Discrete c u)
derive newtype instance EuclideanRing (Discrete c u)

instance (IsSymbol c, IsSymbol u) => Show (Discrete c u) where
  show (Discrete r) =
    "(Discrete "
      <> (reflectSymbol (Proxy :: Proxy c))
      <> " "
      <> (reflectSymbol (Proxy :: Proxy u))
      <> " "
      <> show r
      <> ")"
