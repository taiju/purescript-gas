module UrlFetchApp.HTTPResponse 
  ( HTTPResponse
  , Headers
  , Blob
  , Byte
  , getAllHeaders
  , getAs
  , getBlob
  , getContent
  , getContentText
  , getContentTextWithCharset
  , getHeaders
  , getResponseCode
  ) where

import Prelude

import Effect (Effect)

newtype Headers a = Object a

foreign import data HTTPResponse :: Type

foreign import data Blob :: Type

foreign import data Byte :: Type

foreign import getAllHeaders :: forall a. HTTPResponse -> Effect (Headers a)

foreign import getAs :: String -> HTTPResponse -> Effect Blob

foreign import getBlob :: HTTPResponse -> Effect Blob

foreign import getContent :: HTTPResponse -> Effect (Array Byte)

foreign import getContentText :: HTTPResponse -> Effect String

foreign import getContentTextWithCharset :: String -> HTTPResponse -> Effect String

foreign import getHeaders :: forall a. HTTPResponse -> Effect (Headers a)

foreign import getResponseCode :: HTTPResponse -> Effect Int

foreign import _toSource :: forall a. Headers a -> String

instance showHeaders :: Show (Headers a) where
  show h = _toSource h
