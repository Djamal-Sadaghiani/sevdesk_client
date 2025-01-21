# OpenapiClient::BasicsApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bookkeeping_system_version**](BasicsApi.md#bookkeeping_system_version) | **GET** /Tools/bookkeepingSystemVersion | Retrieve bookkeeping system version |


## bookkeeping_system_version

> <BookkeepingSystemVersion200Response> bookkeeping_system_version

Retrieve bookkeeping system version

To check if you already received the update to version 2.0 you can use this endpoint.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::BasicsApi.new

begin
  # Retrieve bookkeeping system version
  result = api_instance.bookkeeping_system_version
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BasicsApi->bookkeeping_system_version: #{e}"
end
```

#### Using the bookkeeping_system_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookkeepingSystemVersion200Response>, Integer, Hash)> bookkeeping_system_version_with_http_info

```ruby
begin
  # Retrieve bookkeeping system version
  data, status_code, headers = api_instance.bookkeeping_system_version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookkeepingSystemVersion200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BasicsApi->bookkeeping_system_version_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BookkeepingSystemVersion200Response**](BookkeepingSystemVersion200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

