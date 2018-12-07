"use strict";

exports.getId = function(calendar) {
  return function() {
    return calendar.getId();
  };
};

exports.getEventsForDay = function(date) {
  return function(calendar) {
    return function() {
      return calendar.getEventsForDay(date);
    };
  };
};
