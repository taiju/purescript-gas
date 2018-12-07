module GAS.ScriptApp.ClockTriggerBuilder
  ( ClockTriggerBuilder
  , after
  , at
  , atDate
  , atHour
  , create
  , everyDays
  , everyHours
  , everyMinutes
  , everyWeeks
  , inTimezone
  , nearMinute
  , onMonthDay
  , onWeekDay
  ) where

import Data.JSDate (JSDate)
import Effect (Effect)
import GAS.ScriptApp.Trigger (Trigger)

foreign import data ClockTriggerBuilder :: Type

foreign import after :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import at :: JSDate -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import atDate :: Int -> Int -> Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import atHour :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import create :: ClockTriggerBuilder -> Effect Trigger

foreign import everyDays :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import everyHours :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import everyMinutes :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import everyWeeks :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import inTimezone :: String -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import nearMinute :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import onMonthDay :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder

foreign import onWeekDay :: Int -> ClockTriggerBuilder -> Effect ClockTriggerBuilder
