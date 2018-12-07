module GAS.UrlFetchApp
  ( Method(..)
  , FetchParameters
  , contentType
  , headers
  , method
  , payload
  , useIntranet
  , validateHttpsCertificates
  , followRedirects
  , muteHttpExceptions
  , escaping
  , fetch
  , fetchWithParams
  , fetchAll
  , getRequest
  , getRequestWithParams
  ) where

import Prelude

import Data.Functor.Contravariant (cmap)
import Data.Options (Option, Options, opt, options)
import Effect (Effect)
import Foreign (Foreign)
import Foreign.Object (Object)
import Type.Data.Boolean (kind Boolean)
import UrlFetchApp.HTTPResponse (HTTPResponse)

data Method = GET | DELETE | PATCH | POST | PUT

instance showMethod :: Show Method where
  show GET = "get"
  show DELETE = "delete"
  show PATCH = "patch"
  show POST = "post"
  show PUT = "put"

data FetchParameters

url :: Option FetchParameters String
url = opt "url"

contentType :: Option FetchParameters String
contentType = opt "contentType"

headers :: forall a. Option FetchParameters (Object a)
headers = opt "headers"

method :: Option FetchParameters Method
method = cmap show (opt "method")

payload :: Option FetchParameters String
payload = opt "payload"

useIntranet :: Option FetchParameters Boolean
useIntranet = opt "useIntranet"

validateHttpsCertificates :: Option FetchParameters Boolean
validateHttpsCertificates = opt "validateHttpsCertificates"

followRedirects :: Option FetchParameters Boolean
followRedirects = opt "followRedirects"

muteHttpExceptions :: Option FetchParameters Boolean
muteHttpExceptions = opt "muteHttpExceptions"

escaping :: Option FetchParameters Boolean
escaping = opt "escaping"

foreign import fetch :: String -> Effect HTTPResponse

foreign import _fetchWithParams :: String -> Foreign -> Effect HTTPResponse

fetchWithParams :: String -> Options FetchParameters -> Effect HTTPResponse
fetchWithParams _url params = _fetchWithParams _url (options params)

foreign import _fetchAll :: Array Foreign -> Effect (Array HTTPResponse)

fetchAll :: Array (Options FetchParameters) -> Effect (Array HTTPResponse)
fetchAll requests = _fetchAll (map options requests)

foreign import getRequest :: forall a. String -> Effect (Object a)

foreign import _getRequestWithParams :: forall a. String -> Foreign -> Effect (Object a)

getRequestWithParams :: forall a. String -> Options FetchParameters -> Effect (Object a)
getRequestWithParams _url params = _getRequestWithParams _url (options params)
