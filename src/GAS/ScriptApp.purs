module GAS.ScriptApp
  ( deleteTrigger
  , getProjectTriggers
  , newTrigger
  ) where

import Prelude

import Effect (Effect)
import GAS.ScriptApp.Trigger (Trigger)
import GAS.ScriptApp.TriggerBuilder (TriggerBuilder)

foreign import deleteTrigger :: Trigger -> Effect Unit

foreign import newTrigger :: String -> Effect TriggerBuilder

foreign import getProjectTriggers :: Effect (Array Trigger)
