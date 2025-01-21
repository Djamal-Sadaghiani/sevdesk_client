# OpenapiClient::ReportApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**report_contact**](ReportApi.md#report_contact) | **GET** /Report/contactlist | Export contact list |
| [**report_invoice**](ReportApi.md#report_invoice) | **GET** /Report/invoicelist | Export invoice list |
| [**report_order**](ReportApi.md#report_order) | **GET** /Report/orderlist | Export order list |
| [**report_voucher**](ReportApi.md#report_voucher) | **GET** /Report/voucherlist | Export voucher list |


## report_contact

> <ReportContact200Response> report_contact(sev_query, opts)

Export contact list

Export contact list

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

api_instance = OpenapiClient::ReportApi.new
sev_query = OpenapiClient::ReportContactSevQueryParameter.new({model_name: Contact, object_name: SevQuery}) # ReportContactSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export contact list
  result = api_instance.report_contact(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_contact: #{e}"
end
```

#### Using the report_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportContact200Response>, Integer, Hash)> report_contact_with_http_info(sev_query, opts)

```ruby
begin
  # Export contact list
  data, status_code, headers = api_instance.report_contact_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportContact200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ReportContactSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ReportContact200Response**](ReportContact200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_invoice

> <ReportInvoice200Response> report_invoice(view, sev_query, opts)

Export invoice list

Export invoice list

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

api_instance = OpenapiClient::ReportApi.new
view = 'all' # String | 
sev_query = OpenapiClient::ReportInvoiceSevQueryParameter.new({model_name: Invoice, object_name: SevQuery}) # ReportInvoiceSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export invoice list
  result = api_instance.report_invoice(view, sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_invoice: #{e}"
end
```

#### Using the report_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportInvoice200Response>, Integer, Hash)> report_invoice_with_http_info(view, sev_query, opts)

```ruby
begin
  # Export invoice list
  data, status_code, headers = api_instance.report_invoice_with_http_info(view, sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportInvoice200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **view** | **String** |  |  |
| **sev_query** | [**ReportInvoiceSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ReportInvoice200Response**](ReportInvoice200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_order

> <ReportOrder200Response> report_order(view, sev_query, opts)

Export order list

Export order list

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

api_instance = OpenapiClient::ReportApi.new
view = 'all' # String | 
sev_query = OpenapiClient::ReportOrderSevQueryParameter.new({model_name: Order, object_name: SevQuery}) # ReportOrderSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export order list
  result = api_instance.report_order(view, sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_order: #{e}"
end
```

#### Using the report_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportOrder200Response>, Integer, Hash)> report_order_with_http_info(view, sev_query, opts)

```ruby
begin
  # Export order list
  data, status_code, headers = api_instance.report_order_with_http_info(view, sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportOrder200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **view** | **String** |  |  |
| **sev_query** | [**ReportOrderSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ReportOrder200Response**](ReportOrder200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_voucher

> <ReportVoucher200Response> report_voucher(sev_query, opts)

Export voucher list

Export voucher list

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

api_instance = OpenapiClient::ReportApi.new
sev_query = OpenapiClient::ReportVoucherSevQueryParameter.new({model_name: Voucher, object_name: SevQuery}) # ReportVoucherSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export voucher list
  result = api_instance.report_voucher(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_voucher: #{e}"
end
```

#### Using the report_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportVoucher200Response>, Integer, Hash)> report_voucher_with_http_info(sev_query, opts)

```ruby
begin
  # Export voucher list
  data, status_code, headers = api_instance.report_voucher_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportVoucher200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReportApi->report_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ReportVoucherSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ReportVoucher200Response**](ReportVoucher200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

