/* global PropertiesService */
"use strict";

exports.getDocumentProperties = function() {
  return PropertiesService.getDocumentProperties();
};

exports.getScriptProperties = function() {
  return PropertiesService.getScriptProperties();
};

exports.getUserProperties = function() {
  return PropertiesService.getUserProperties();
};
