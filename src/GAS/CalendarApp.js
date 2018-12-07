/* global CalendarApp */
"use strict";

exports.getCalendarById = function(id) {
  return function() {
    return CalendarApp.getCalendarById(id);
  };
};
