"use strict";

exports.getEventType = function(trigger) {
  return function() {
    return trigger.getEventType();
  };
};

exports.getHandlerFunction = function(trigger) {
  return function() {
    return trigger.getHandlerFunction();
  };
};

exports.getTriggerSource = function(trigger) {
  return function() {
    return trigger.getTriggerSource();
  };
};

exports.getTriggerSourceId = function(trigger) {
  return function() {
    return trigger.getTriggerSourceId();
  };
};

exports.getUniqueId = function(trigger) {
  return function() {
    return trigger.getUniqueId();
  };
};