# OpenapiClient::LayoutApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_letterpapers_with_thumb**](LayoutApi.md#get_letterpapers_with_thumb) | **GET** /DocServer/getLetterpapersWithThumb | Retrieve letterpapers |
| [**get_templates**](LayoutApi.md#get_templates) | **GET** /DocServer/getTemplatesWithThumb | Retrieve templates |
| [**update_credit_note_template**](LayoutApi.md#update_credit_note_template) | **PUT** /CreditNote/{creditNoteId}/changeParameter | Update an of credit note template |
| [**update_invoice_template**](LayoutApi.md#update_invoice_template) | **PUT** /Invoice/{invoiceId}/changeParameter | Update an invoice template |
| [**update_order_template**](LayoutApi.md#update_order_template) | **PUT** /Order/{orderId}/changeParameter | Update an order template |


## get_letterpapers_with_thumb

> <GetLetterpapersWithThumb200Response> get_letterpapers_with_thumb

Retrieve letterpapers

Retrieve all letterpapers with Thumb

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

api_instance = OpenapiClient::LayoutApi.new

begin
  # Retrieve letterpapers
  result = api_instance.get_letterpapers_with_thumb
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->get_letterpapers_with_thumb: #{e}"
end
```

#### Using the get_letterpapers_with_thumb_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLetterpapersWithThumb200Response>, Integer, Hash)> get_letterpapers_with_thumb_with_http_info

```ruby
begin
  # Retrieve letterpapers
  data, status_code, headers = api_instance.get_letterpapers_with_thumb_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLetterpapersWithThumb200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->get_letterpapers_with_thumb_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetLetterpapersWithThumb200Response**](GetLetterpapersWithThumb200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> <GetTemplates200Response> get_templates(opts)

Retrieve templates

Retrieve all templates

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

api_instance = OpenapiClient::LayoutApi.new
opts = {
  type: 'Invoice' # String | Type of the templates you want to get.
}

begin
  # Retrieve templates
  result = api_instance.get_templates(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->get_templates: #{e}"
end
```

#### Using the get_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplates200Response>, Integer, Hash)> get_templates_with_http_info(opts)

```ruby
begin
  # Retrieve templates
  data, status_code, headers = api_instance.get_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->get_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of the templates you want to get. | [optional] |

### Return type

[**GetTemplates200Response**](GetTemplates200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_credit_note_template

> <ModelChangeLayoutResponse> update_credit_note_template(credit_note_id, opts)

Update an of credit note template

Update an existing of credit note template

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

api_instance = OpenapiClient::LayoutApi.new
credit_note_id = 56 # Integer | ID of credit note to update
opts = {
  model_change_layout: OpenapiClient::ModelChangeLayout.new({key: 'language', value: '573ef2706bd2d50366786471'}) # ModelChangeLayout | Change Layout
}

begin
  # Update an of credit note template
  result = api_instance.update_credit_note_template(credit_note_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->update_credit_note_template: #{e}"
end
```

#### Using the update_credit_note_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelChangeLayoutResponse>, Integer, Hash)> update_credit_note_template_with_http_info(credit_note_id, opts)

```ruby
begin
  # Update an of credit note template
  data, status_code, headers = api_instance.update_credit_note_template_with_http_info(credit_note_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelChangeLayoutResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->update_credit_note_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of credit note to update |  |
| **model_change_layout** | [**ModelChangeLayout**](ModelChangeLayout.md) | Change Layout | [optional] |

### Return type

[**ModelChangeLayoutResponse**](ModelChangeLayoutResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_invoice_template

> <ModelChangeLayoutResponse> update_invoice_template(invoice_id, opts)

Update an invoice template

Update an existing invoice template

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

api_instance = OpenapiClient::LayoutApi.new
invoice_id = 56 # Integer | ID of invoice to update
opts = {
  model_change_layout: OpenapiClient::ModelChangeLayout.new({key: 'language', value: '573ef2706bd2d50366786471'}) # ModelChangeLayout | Change Layout
}

begin
  # Update an invoice template
  result = api_instance.update_invoice_template(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->update_invoice_template: #{e}"
end
```

#### Using the update_invoice_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelChangeLayoutResponse>, Integer, Hash)> update_invoice_template_with_http_info(invoice_id, opts)

```ruby
begin
  # Update an invoice template
  data, status_code, headers = api_instance.update_invoice_template_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelChangeLayoutResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->update_invoice_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to update |  |
| **model_change_layout** | [**ModelChangeLayout**](ModelChangeLayout.md) | Change Layout | [optional] |

### Return type

[**ModelChangeLayoutResponse**](ModelChangeLayoutResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order_template

> <ModelChangeLayoutResponse> update_order_template(order_id, opts)

Update an order template

Update an existing order template

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

api_instance = OpenapiClient::LayoutApi.new
order_id = 56 # Integer | ID of order to update
opts = {
  model_change_layout: OpenapiClient::ModelChangeLayout.new({key: 'language', value: '573ef2706bd2d50366786471'}) # ModelChangeLayout | Change Layout
}

begin
  # Update an order template
  result = api_instance.update_order_template(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->update_order_template: #{e}"
end
```

#### Using the update_order_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelChangeLayoutResponse>, Integer, Hash)> update_order_template_with_http_info(order_id, opts)

```ruby
begin
  # Update an order template
  data, status_code, headers = api_instance.update_order_template_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelChangeLayoutResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LayoutApi->update_order_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to update |  |
| **model_change_layout** | [**ModelChangeLayout**](ModelChangeLayout.md) | Change Layout | [optional] |

### Return type

[**ModelChangeLayoutResponse**](ModelChangeLayoutResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

