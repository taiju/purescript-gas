module GAS.ScriptApp.TriggerSource
  ( TriggerSource
  , spreadsheets
  , clock
  , forms
  , documents
  , calendar
  ) where

import Prelude

foreign import data TriggerSource :: Type

foreign import spreadsheets :: TriggerSource

foreign import clock :: TriggerSource

foreign import forms :: TriggerSource

foreign import documents :: TriggerSource

foreign import calendar :: TriggerSource

foreign import _eqTriggerSource :: TriggerSource -> TriggerSource -> Boolean

instance eqTriggerSource :: Eq TriggerSource where
  eq = _eqTriggerSource