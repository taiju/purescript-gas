/* global Logger */
"use strict";

exports.logger = function() {
  return Logger;
};

exports.clear = function(logger) {
  return function() {
    logger.clear();
  };
};

exports.getLog = function(logger) {
  return function() {
    return logger.getLog();
  };
};

exports._log = function(data) {
  return function(logger) {
    return function() {
      return logger.log(data);
    };
  };
};

exports._logFormat = function(format) {
  return function(values) {
    return function(logger) {
      return function() {
        return logger.log.apply(logger, [format].concat(values));
      };
    };
  };
};
