/* global ScriptApp */
"use strict";

exports.clock = ScriptApp.EventType.CLOCK;

exports.on_open = ScriptApp.EventType.ON_OPEN;

exports.on_edit = ScriptApp.EventType.ON_EDIT;

exports.on_form_submit = ScriptApp.EventType.ON_FORM_SUBMIT;

exports.on_change = ScriptApp.EventType.ON_CHANGE;

exports.on_event_updated = ScriptApp.EventType.ON_EVENT_UPDATED;

exports._eqEventType = function(e1) {
  return function(e2) {
    return e1 === e2;
  };
};