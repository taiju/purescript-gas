module GAS.PropertiesService
  ( getDocumentProperties
  , getScriptProperties
  , getUserProperties
  ) where

import Effect (Effect)
import GAS.PropertiesService.Properties (Properties)

foreign import getDocumentProperties :: Effect Properties

foreign import getScriptProperties :: Effect Properties

foreign import getUserProperties :: Effect Properties