"use strict";

exports.after = function(durationMilliseconds) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.after(durationMilliseconds);
    };
  };
};

exports.at = function(date) {
  return function (clockTriggerBuilder) {
    return function () {
      return clockTriggerBuilder.at(date);
    };
  };
};

exports.atDate = function(year) {
  return function(month) {
    return function(day) {
      return function(clockTriggerBuilder) {
        return function() {
          return clockTriggerBuilder.atDate(year, month, day);
        };
      };
    };
  };
};

exports.atHour = function(hour) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.atHour(hour);
    };
  };
};

exports.create = function(clockTriggerBuilder) {
  return function() {
    return clockTriggerBuilder.create();
  };
};

exports.everyDays = function(n) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.everyDays(n);
    };
  };
};

exports.everyHours = function(n) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.everyHours(n);
    };
  };
};

exports.everyMinutes = function(n) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.everyMinutes(n);
    };
  };
};

exports.everyWeeks = function(n) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.everyWeeks(n);
    };
  };
};

exports.inTimezone = function(timezone) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.inTimezone(timezone);
    };
  };
};

exports.nearMinute = function(minute) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.nearMinute(minute);
    };
  };
};

exports.onMonthDay = function(day) {
  return function(clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.onMonthDay(day);
    };
  };
};

exports.onWeekDay = function(day) {
  return function (clockTriggerBuilder) {
    return function() {
      return clockTriggerBuilder.onWeekDay(day);
    };
  };
};