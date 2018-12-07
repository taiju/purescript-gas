module GAS.ScriptApp.Trigger
  ( Trigger
  , getEventType
  , getHandlerFunction
  , getTriggerSource
  , getTriggerSourceId
  , getUniqueId
  ) where

import Effect (Effect)
import GAS.ScriptApp.EventType (EventType)
import GAS.ScriptApp.TriggerSource (TriggerSource)

foreign import data Trigger :: Type

foreign import getEventType :: Trigger -> Effect EventType

foreign import getHandlerFunction :: Trigger -> Effect String

foreign import getTriggerSource :: Trigger -> Effect TriggerSource

foreign import getTriggerSourceId :: Trigger -> Effect String

foreign import getUniqueId :: Trigger -> Effect String