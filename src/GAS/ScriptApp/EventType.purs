module GAS.ScriptApp.EventType
  ( EventType
  , clock
  , on_open
  , on_edit
  , on_form_submit
  , on_change
  , on_event_updated
  ) where


import Prelude

foreign import data EventType :: Type

foreign import clock :: EventType

foreign import on_open :: EventType

foreign import on_edit :: EventType

foreign import on_form_submit :: EventType

foreign import on_change :: EventType

foreign import on_event_updated :: EventType

foreign import _eqEventType :: EventType -> EventType -> Boolean

instance eqEventType :: Eq EventType where
  eq = _eqEventType