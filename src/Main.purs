module Main where

import Prelude

import Data.Money.Approximation (Approximation(..))
import Data.Money.Dense (Dense(..))
import Data.Money.Discrete (Discrete)
import Data.Money.ExchangeRate (ExchangeRate(..), exchange)
import Data.Money.Money (discreteFromDense)
import Data.Rational ((%))
import Data.Tuple (Tuple, fst)
import Effect (Effect)
import Effect.Console (log)

bar :: Approximation -> Dense "SEK" -> Tuple (Discrete "SEK" "öre") (Dense "SEK")
bar = discreteFromDense

baz :: Approximation
baz = Round

foo :: Dense "SEK" -> Tuple (Discrete "SEK" "öre") (Dense "SEK")
foo = bar baz

main :: Effect Unit
main = do
  let
    sek = Dense @"SEK" (360 % 1)
    _sekd = fst (foo sek) :: Discrete "SEK" "öre"
  log "🍝"
