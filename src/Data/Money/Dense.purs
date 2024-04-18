module Data.Money.Dense
  ( Dense(..)
  ) where

import Prelude

import Data.Generic.Rep (class Generic)
import Data.Newtype (class Newtype)
import Data.Rational (Rational)
import Data.Symbol (class IsSymbol, reflectSymbol)
import Type.Proxy (Proxy(..))

newtype Dense (currency :: Symbol) = Dense Rational

derive instance Eq (Dense c)
derive instance Ord (Dense c)
derive instance Generic (Dense c) _
derive instance Newtype (Dense c) _

derive newtype instance Semiring (Dense c)
derive newtype instance Ring (Dense c)
derive newtype instance CommutativeRing (Dense c)
derive newtype instance EuclideanRing (Dense c)

instance (IsSymbol c) => Show (Dense c) where
  show (Dense r) =
    "(Dense "
      <> (reflectSymbol (Proxy :: Proxy c))
      <> " "
      <> show r
      <> ")"
