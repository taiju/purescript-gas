module GAS.ScriptApp.TriggerBuilder
  ( TriggerBuilder
  , timeBased
  ) where

import Effect (Effect)
import GAS.ScriptApp.ClockTriggerBuilder (ClockTriggerBuilder)

foreign import data TriggerBuilder :: Type

foreign import timeBased :: TriggerBuilder -> Effect ClockTriggerBuilder