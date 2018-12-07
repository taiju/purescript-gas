module GAS.Logger
  ( Logger
  , logger
  , clear
  , getLog
  , log
  , logFormat
  ) where

import Prelude

import Effect (Effect)

foreign import data Logger :: Type

foreign import logger :: Effect Logger

foreign import clear :: Logger -> Effect Unit

foreign import getLog :: Logger -> Effect String

foreign import _log :: String -> Logger -> Effect Logger

foreign import _logFormat :: String -> Array String -> Logger -> Effect Logger

log :: forall a. Show a => a -> Logger -> Effect Logger
log = _log <<< show

logFormat :: forall a. Show a => String -> Array a -> Logger -> Effect Logger
logFormat s = _logFormat s <<< map show
