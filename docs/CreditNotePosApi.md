# OpenapiClient::CreditNotePosApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**getcredit_note_positions**](CreditNotePosApi.md#getcredit_note_positions) | **GET** /CreditNotePos | Retrieve creditNote positions |


## getcredit_note_positions

> <GetcreditNotePositions200Response> getcredit_note_positions(opts)

Retrieve creditNote positions

Retrieve all creditNote positions depending on the filters defined in the query.

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

api_instance = OpenapiClient::CreditNotePosApi.new
opts = {
  credit_note_id: 56, # Integer | Retrieve all creditNote positions belonging to this creditNote. Must be provided with creditNote[objectName]
  credit_note_object_name: 'credit_note_object_name_example' # String | Only required if creditNote[id] was provided. 'creditNote' should be used as value.
}

begin
  # Retrieve creditNote positions
  result = api_instance.getcredit_note_positions(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNotePosApi->getcredit_note_positions: #{e}"
end
```

#### Using the getcredit_note_positions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetcreditNotePositions200Response>, Integer, Hash)> getcredit_note_positions_with_http_info(opts)

```ruby
begin
  # Retrieve creditNote positions
  data, status_code, headers = api_instance.getcredit_note_positions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetcreditNotePositions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNotePosApi->getcredit_note_positions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | Retrieve all creditNote positions belonging to this creditNote. Must be provided with creditNote[objectName] | [optional] |
| **credit_note_object_name** | **String** | Only required if creditNote[id] was provided. &#39;creditNote&#39; should be used as value. | [optional] |

### Return type

[**GetcreditNotePositions200Response**](GetcreditNotePositions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

