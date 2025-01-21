# OpenapiClient::VoucherPosApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_voucher_positions**](VoucherPosApi.md#get_voucher_positions) | **GET** /VoucherPos | Retrieve voucher positions |


## get_voucher_positions

> <GetVoucherPositions200Response> get_voucher_positions(opts)

Retrieve voucher positions

Retrieve all voucher positions depending on the filters defined in the query.

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

api_instance = OpenapiClient::VoucherPosApi.new
opts = {
  voucher_id: 56, # Integer | Retrieve all vouchers positions belonging to this voucher. Must be provided with voucher[objectName]
  voucher_object_name: 'voucher_object_name_example' # String | Only required if voucher[id] was provided. 'Voucher' should be used as value.
}

begin
  # Retrieve voucher positions
  result = api_instance.get_voucher_positions(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherPosApi->get_voucher_positions: #{e}"
end
```

#### Using the get_voucher_positions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVoucherPositions200Response>, Integer, Hash)> get_voucher_positions_with_http_info(opts)

```ruby
begin
  # Retrieve voucher positions
  data, status_code, headers = api_instance.get_voucher_positions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVoucherPositions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherPosApi->get_voucher_positions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | Retrieve all vouchers positions belonging to this voucher. Must be provided with voucher[objectName] | [optional] |
| **voucher_object_name** | **String** | Only required if voucher[id] was provided. &#39;Voucher&#39; should be used as value. | [optional] |

### Return type

[**GetVoucherPositions200Response**](GetVoucherPositions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

