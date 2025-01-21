# OpenapiClient::AccountingContactApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_accounting_contact**](AccountingContactApi.md#create_accounting_contact) | **POST** /AccountingContact | Create a new accounting contact |
| [**delete_accounting_contact**](AccountingContactApi.md#delete_accounting_contact) | **DELETE** /AccountingContact/{accountingContactId} | Deletes an accounting contact |
| [**get_accounting_contact**](AccountingContactApi.md#get_accounting_contact) | **GET** /AccountingContact | Retrieve accounting contact |
| [**get_accounting_contact_by_id**](AccountingContactApi.md#get_accounting_contact_by_id) | **GET** /AccountingContact/{accountingContactId} | Find accounting contact by ID |
| [**update_accounting_contact**](AccountingContactApi.md#update_accounting_contact) | **PUT** /AccountingContact/{accountingContactId} | Update an existing accounting contact |


## create_accounting_contact

> <ModelAccountingContactResponse> create_accounting_contact(opts)

Create a new accounting contact

Creates a new accounting contact.

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

api_instance = OpenapiClient::AccountingContactApi.new
opts = {
  model_accounting_contact: OpenapiClient::ModelAccountingContact.new({contact: OpenapiClient::ModelAccountingContactContact.new({id: 37, object_name: 'Contact'})}) # ModelAccountingContact | Creation data
}

begin
  # Create a new accounting contact
  result = api_instance.create_accounting_contact(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->create_accounting_contact: #{e}"
end
```

#### Using the create_accounting_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelAccountingContactResponse>, Integer, Hash)> create_accounting_contact_with_http_info(opts)

```ruby
begin
  # Create a new accounting contact
  data, status_code, headers = api_instance.create_accounting_contact_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelAccountingContactResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->create_accounting_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_accounting_contact** | [**ModelAccountingContact**](ModelAccountingContact.md) | Creation data | [optional] |

### Return type

[**ModelAccountingContactResponse**](ModelAccountingContactResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_accounting_contact

> <DeleteCheckAccount200Response> delete_accounting_contact(accounting_contact_id)

Deletes an accounting contact

Attention, deleting an existing AccountingContact can lead to **booking errors**, especially in the **DATEV export**. Compatibility of sevdesk with DATEV is no longer guaranteed.

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

api_instance = OpenapiClient::AccountingContactApi.new
accounting_contact_id = 56 # Integer | Id of accounting contact resource to delete

begin
  # Deletes an accounting contact
  result = api_instance.delete_accounting_contact(accounting_contact_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->delete_accounting_contact: #{e}"
end
```

#### Using the delete_accounting_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_accounting_contact_with_http_info(accounting_contact_id)

```ruby
begin
  # Deletes an accounting contact
  data, status_code, headers = api_instance.delete_accounting_contact_with_http_info(accounting_contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->delete_accounting_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_contact_id** | **Integer** | Id of accounting contact resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounting_contact

> <GetAccountingContact200Response> get_accounting_contact(opts)

Retrieve accounting contact

Returns all accounting contact which have been added up until now. Filters can be added.

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

api_instance = OpenapiClient::AccountingContactApi.new
opts = {
  contact_id: 'contact_id_example', # String | ID of contact for which you want the accounting contact.
  contact_object_name: 'Contact' # String | Object name. Only needed if you also defined the ID of a contact.
}

begin
  # Retrieve accounting contact
  result = api_instance.get_accounting_contact(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->get_accounting_contact: #{e}"
end
```

#### Using the get_accounting_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountingContact200Response>, Integer, Hash)> get_accounting_contact_with_http_info(opts)

```ruby
begin
  # Retrieve accounting contact
  data, status_code, headers = api_instance.get_accounting_contact_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountingContact200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->get_accounting_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | ID of contact for which you want the accounting contact. | [optional] |
| **contact_object_name** | **String** | Object name. Only needed if you also defined the ID of a contact. | [optional] |

### Return type

[**GetAccountingContact200Response**](GetAccountingContact200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounting_contact_by_id

> <GetAccountingContact200Response> get_accounting_contact_by_id(accounting_contact_id)

Find accounting contact by ID

Returns a single accounting contac

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

api_instance = OpenapiClient::AccountingContactApi.new
accounting_contact_id = 56 # Integer | ID of accounting contact to return

begin
  # Find accounting contact by ID
  result = api_instance.get_accounting_contact_by_id(accounting_contact_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->get_accounting_contact_by_id: #{e}"
end
```

#### Using the get_accounting_contact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountingContact200Response>, Integer, Hash)> get_accounting_contact_by_id_with_http_info(accounting_contact_id)

```ruby
begin
  # Find accounting contact by ID
  data, status_code, headers = api_instance.get_accounting_contact_by_id_with_http_info(accounting_contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountingContact200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->get_accounting_contact_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_contact_id** | **Integer** | ID of accounting contact to return |  |

### Return type

[**GetAccountingContact200Response**](GetAccountingContact200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_accounting_contact

> <ModelAccountingContactResponse> update_accounting_contact(accounting_contact_id, opts)

Update an existing accounting contact

Attention, updating an existing AccountingContact can lead to **booking errors**, especially in the **DATEV export**. Compatibility of sevdesk with DATEV is no longer guaranteed.

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

api_instance = OpenapiClient::AccountingContactApi.new
accounting_contact_id = 56 # Integer | ID of accounting contact to update
opts = {
  model_accounting_contact_update: OpenapiClient::ModelAccountingContactUpdate.new # ModelAccountingContactUpdate | Update data
}

begin
  # Update an existing accounting contact
  result = api_instance.update_accounting_contact(accounting_contact_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->update_accounting_contact: #{e}"
end
```

#### Using the update_accounting_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelAccountingContactResponse>, Integer, Hash)> update_accounting_contact_with_http_info(accounting_contact_id, opts)

```ruby
begin
  # Update an existing accounting contact
  data, status_code, headers = api_instance.update_accounting_contact_with_http_info(accounting_contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelAccountingContactResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountingContactApi->update_accounting_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_contact_id** | **Integer** | ID of accounting contact to update |  |
| **model_accounting_contact_update** | [**ModelAccountingContactUpdate**](ModelAccountingContactUpdate.md) | Update data | [optional] |

### Return type

[**ModelAccountingContactResponse**](ModelAccountingContactResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

