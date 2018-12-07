"use strict";

exports.deleteAllProperties = function(properties) {
  return function() {
    return properties.deleteAllProperties();
  };
};

exports.deleteProperty = function(key) {
  return function(properties) {
    return function() {
      return properties.deleteProperty(key);
    };
  };
};

exports.getKeys = function(properties) {
  return function() {
    return properties.getKeys();
  };
};

exports.getProperties = function(properties) {
  return function() {
    return properties.getProperties();
  };
};

exports._getProperty = function(just) {
  return function(nothing) {
    return function(key) {
      return function(properties) {
        return function() {
          var prop = properties.getProperty(key);
          return prop ? just(prop) : nothing;
        };
      };
    };
  };
};

exports.setProperties = function(newProperties) {
  return function(properties) {
    return function() {
      return properties.setProperties(newProperties);
    };
  };
};

exports.setPropertiesAndDeleteAll = function(newProperties) {
  return function(deleteAllOthers) {
    return function(properties) {
      return function() {
        return properties.setProperties(newProperties, deleteAllOthers);
      };
    };
  };
};

exports.setProperty = function(key) {
  return function(value) {
    return function(properties) {
      return function() {
        return properties.setProperty(key, value);
      };
    };
  };
};
