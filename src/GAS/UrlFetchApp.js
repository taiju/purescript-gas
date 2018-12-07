/* global UrlFetchApp */
"use strict";

exports.fetch = function(url) {
  return function() {
    return UrlFetchApp.fetch(url);
  };
};

exports._fetchWithParams = function(url) {
  return function(params) {
    return function() {
      return UrlFetchApp.fetch(url, params);
    };
  };
};

exports._fetchAll = function(requests) {
  return function() {
    return UrlFetchApp.fetchAll(requests);
  };
};

exports.getRequest = function(url) {
  return function() {
    return UrlFetchApp.getRequest(url);
  };
};

exports._getRequestWithParams = function(url) {
  return function(params) {
    return function() {
      return UrlFetchApp.getRequest(url, params);
    };
  };
};
