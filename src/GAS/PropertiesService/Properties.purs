module GAS.PropertiesService.Properties
  ( Properties
  , deleteAllProperties
  , deleteProperty
  , getKeys
  , getProperties
  , getProperty
  , setProperties
  , setPropertiesAndDeleteAll
  , setProperty
  ) where

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Foreign.Object (Object)

type Properties = Object String

foreign import deleteAllProperties :: Properties -> Effect Properties

foreign import deleteProperty :: String -> Properties -> Effect Properties

foreign import getKeys :: Properties -> Effect (Array String)

foreign import getProperties :: forall a. Properties -> Effect (Object a)

foreign import _getProperty :: (forall a. a -> Maybe a) -> (forall a. Maybe a) -> String -> Properties -> Effect (Maybe String)

foreign import setProperties :: Properties -> Properties -> Effect Properties

foreign import setPropertiesAndDeleteAll :: Properties -> Boolean -> Properties -> Effect Properties

foreign import setProperty :: String -> String -> Properties -> Effect Properties

getProperty :: String -> Properties -> Effect (Maybe String)
getProperty = _getProperty Just Nothing
