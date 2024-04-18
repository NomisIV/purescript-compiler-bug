module Data.Typelevel.Undefined (undefined) where

import Data.Unit (unit)
import Unsafe.Coerce (unsafeCoerce)

undefined :: forall a. a
undefined = unsafeCoerce unit
