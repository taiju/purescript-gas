/* global ScriptApp */
"use strict";

exports.deleteTrigger = function(trigger) {
  return function() {
    ScriptApp.deleteTrigger(trigger);
  };
};

exports.getProjectTriggers = function() {
  return ScriptApp.getProjectTriggers();
};

exports.newTrigger = function(functionName) {
  return function() {
    return ScriptApp.newTrigger(functionName);
  };
};
