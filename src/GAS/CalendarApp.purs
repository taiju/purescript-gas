module GAS.CalendarApp
(getCalendarById)
where

import Effect (Effect)
import GAS.CalendarApp.Calendar (Calendar)

foreign import getCalendarById :: String -> Effect Calendar
