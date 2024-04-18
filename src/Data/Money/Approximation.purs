module Data.Money.Approximation
  ( Approximation(..)
  , approximate
  , truncate
  , halfEven
  , halfAwayFromZero
  ) where

import Prelude

import Data.Ord (abs, signum)
import Data.Rational (Rational, (%))
import Data.Rational as Rat
import Data.Int as Int

data Approximation
  = Round
  | Floor
  | Ceiling
  | Truncate
  | HalfEven
  | HalfAwayFromZero

approximate :: Approximation -> Rational -> Int
approximate approximationType =
  case approximationType of
    Round -> Int.round <<< Rat.toNumber
    Floor -> Int.floor <<< Rat.toNumber
    Ceiling -> Int.ceil <<< Rat.toNumber
    Truncate -> truncate
    HalfEven -> halfEven
    HalfAwayFromZero -> halfAwayFromZero

truncate :: Rational -> Int
truncate r = Int.quot (Rat.numerator r) (Rat.denominator r)

halfEven :: Rational -> Int
halfEven r =
  let
    tr = truncate r
    rr = (Rat.fromInt tr) - r
  in
  case unit of
    _ | abs rr /= (1 % 2) -> Int.round <<< Rat.toNumber $ r
    _ | Int.even tr -> tr
    _ | otherwise -> tr + signum tr

halfAwayFromZero :: Rational -> Int
halfAwayFromZero r =
  let
    s = truncate (signum r)
    ar = abs r
    tr = truncate ar
    rr = ar - (Rat.fromInt tr)
  in
  case unit of
    _ | rr < (1 % 2) -> s * tr
    _ | otherwise -> s * (tr + 1)

