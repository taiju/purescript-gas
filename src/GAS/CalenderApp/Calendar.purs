module GAS.CalendarApp.Calendar
 ( Calendar
 , getId
 , getEventsForDay
 ) where

import Data.JSDate (JSDate)
import Effect (Effect)
import GAS.CalendarApp.CalendarEvent (CalendarEvent)

foreign import data Calendar :: Type

foreign import getId :: String -> Calendar -> Effect String

foreign import getEventsForDay :: JSDate -> Calendar -> Effect (Array CalendarEvent)
