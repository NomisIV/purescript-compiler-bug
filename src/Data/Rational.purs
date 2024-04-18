module Data.Rational
  ( Rational
  , (%)
  , toNumber
  , fromInt
  , numerator
  , denominator
  , class ToRational
  , toRational
  ) where

import Prelude

import Data.Int as Int
import Data.Ratio as Ratio

newtype Rational = Rational (Ratio.Ratio Int)

derive newtype instance Eq Rational
derive newtype instance Ord Rational
derive newtype instance Show Rational
derive newtype instance Semiring Rational
derive newtype instance Ring Rational
derive newtype instance CommutativeRing Rational
derive newtype instance EuclideanRing Rational
derive newtype instance DivisionRing Rational

toNumber :: Rational -> Number
toNumber (Rational x) = Int.toNumber (Ratio.numerator x) / Int.toNumber (Ratio.denominator x)

fromInt :: Int -> Rational
fromInt i = Rational $ Ratio.reduce (i) 1

numerator :: Rational -> Int
numerator (Rational x) = Ratio.numerator x

denominator :: Rational -> Int
denominator (Rational x) = Ratio.denominator x

class
  ToRational a
  where
  toRational :: a -> a -> Rational

instance ToRational Int
  where
  toRational a b = Rational $ Ratio.reduce (a) b

infixl 7 toRational as %
