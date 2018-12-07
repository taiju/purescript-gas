"use strict";

exports.getAllHeaders = function(httpReponse) {
  return function() {
    return httpReponse.getAllHeaders();
  };
};

exports.getAs = function(contentType) {
  return function(httpResponse) {
    return function() {
      return httpResponse.getAs(contentType);
    };
  };
};

exports.getBlob = function(httpResponse) {
  return function() {
    return httpResponse.getBlob();
  };
};

exports.getContent = function(httpResponse) {
  return function() {
    return httpResponse.getContent();
  };
};

exports.getContentText = function(httpReponse) {
  return function() {
    return httpReponse.getContentText();
  };
};

exports.getContentTextWithCharset = function(httpResponse) {
  return function(charset) {
    return httpResponse.getContentText(charset);
  };
};

exports.getHeaders = function(httpResponse) {
  return function() {
    return httpResponse.getHeaders();
  };
};

exports.getResponseCode = function(httpResponse) {
  return function() {
    return httpResponse.getResponseCode();
  };
};

exports._toSource = function(o) {
  return o.toSource();
};
