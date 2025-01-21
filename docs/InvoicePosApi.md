# OpenapiClient::InvoicePosApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_invoice_pos**](InvoicePosApi.md#get_invoice_pos) | **GET** /InvoicePos | Retrieve InvoicePos |


## get_invoice_pos

> <GetInvoicePositionsById200Response> get_invoice_pos(opts)

Retrieve InvoicePos

There are a multitude of parameter which can be used to filter.

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

api_instance = OpenapiClient::InvoicePosApi.new
opts = {
  id: 8.14, # Float | Retrieve all InvoicePos with this InvoicePos id
  invoice_id: 8.14, # Float | Retrieve all invoices positions with this invoice. Must be provided with invoice[objectName]
  invoice_object_name: 'invoice_object_name_example', # String | Only required if invoice[id] was provided. 'Invoice' should be used as value.
  part_id: 8.14, # Float | Retrieve all invoices positions with this part. Must be provided with part[objectName]
  part_object_name: 'part_object_name_example' # String | Only required if part[id] was provided. 'Part' should be used as value.
}

begin
  # Retrieve InvoicePos
  result = api_instance.get_invoice_pos(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicePosApi->get_invoice_pos: #{e}"
end
```

#### Using the get_invoice_pos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoicePositionsById200Response>, Integer, Hash)> get_invoice_pos_with_http_info(opts)

```ruby
begin
  # Retrieve InvoicePos
  data, status_code, headers = api_instance.get_invoice_pos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoicePositionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoicePosApi->get_invoice_pos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | Retrieve all InvoicePos with this InvoicePos id | [optional] |
| **invoice_id** | **Float** | Retrieve all invoices positions with this invoice. Must be provided with invoice[objectName] | [optional] |
| **invoice_object_name** | **String** | Only required if invoice[id] was provided. &#39;Invoice&#39; should be used as value. | [optional] |
| **part_id** | **Float** | Retrieve all invoices positions with this part. Must be provided with part[objectName] | [optional] |
| **part_object_name** | **String** | Only required if part[id] was provided. &#39;Part&#39; should be used as value. | [optional] |

### Return type

[**GetInvoicePositionsById200Response**](GetInvoicePositionsById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

