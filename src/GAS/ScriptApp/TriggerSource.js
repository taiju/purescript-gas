/* global ScriptApp */
"use strict";

exports.spreadsheets = ScriptApp.TriggerSource.SPREADSHEETS;

exports.clock = ScriptApp.TriggerSource.CLOCK;

exports.forms = ScriptApp.TriggerSource.FORMS;

exports.documents = ScriptApp.TriggerSource.DOCUMENTS;

exports.calendar = ScriptApp.TriggerSource.CALENDAR;

exports._eqTriggerSource = function(t1) {
  return function(t2) {
    return t1 === t2;
  };
};