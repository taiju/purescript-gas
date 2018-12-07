"use strict";

exports.timeBased = function(triggerBuilder) {
  return function() {
    return triggerBuilder.timeBased();
  };
};