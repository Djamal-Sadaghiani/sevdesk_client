# OpenapiClient::ContactAddressApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**contact_address_id**](ContactAddressApi.md#contact_address_id) | **GET** /ContactAddress/{contactAddressId} | Find contact address by ID |
| [**create_contact_address**](ContactAddressApi.md#create_contact_address) | **POST** /ContactAddress | Create a new contact address |
| [**delete_contact_address**](ContactAddressApi.md#delete_contact_address) | **DELETE** /ContactAddress/{contactAddressId} | Deletes a contact address |
| [**get_contact_addresses**](ContactAddressApi.md#get_contact_addresses) | **GET** /ContactAddress | Retrieve contact addresses |
| [**update_contact_address**](ContactAddressApi.md#update_contact_address) | **PUT** /ContactAddress/{contactAddressId} | update a existing contact address |


## contact_address_id

> <GetContactAddresses200Response> contact_address_id(contact_address_id)

Find contact address by ID

Returns a single contact address

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

api_instance = OpenapiClient::ContactAddressApi.new
contact_address_id = 56 # Integer | ID of contact address to return

begin
  # Find contact address by ID
  result = api_instance.contact_address_id(contact_address_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->contact_address_id: #{e}"
end
```

#### Using the contact_address_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactAddresses200Response>, Integer, Hash)> contact_address_id_with_http_info(contact_address_id)

```ruby
begin
  # Find contact address by ID
  data, status_code, headers = api_instance.contact_address_id_with_http_info(contact_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactAddresses200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->contact_address_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_address_id** | **Integer** | ID of contact address to return |  |

### Return type

[**GetContactAddresses200Response**](GetContactAddresses200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_contact_address

> <ModelContactAddressResponse> create_contact_address(opts)

Create a new contact address

Creates a new contact address.

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

api_instance = OpenapiClient::ContactAddressApi.new
opts = {
  model_contact_address: OpenapiClient::ModelContactAddress.new({contact: OpenapiClient::ModelContactAddressResponseContact.new({id: 37, object_name: 'Contact'}), country: OpenapiClient::ModelContactAddressResponseCountry.new({id: 37, object_name: 'StaticCountry'}), category: OpenapiClient::ModelContactAddressResponseCategory.new({id: 37, object_name: 'object_name_example'})}) # ModelContactAddress | Creation data
}

begin
  # Create a new contact address
  result = api_instance.create_contact_address(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->create_contact_address: #{e}"
end
```

#### Using the create_contact_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactAddressResponse>, Integer, Hash)> create_contact_address_with_http_info(opts)

```ruby
begin
  # Create a new contact address
  data, status_code, headers = api_instance.create_contact_address_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactAddressResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->create_contact_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_contact_address** | [**ModelContactAddress**](ModelContactAddress.md) | Creation data | [optional] |

### Return type

[**ModelContactAddressResponse**](ModelContactAddressResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact_address

> <DeleteCheckAccount200Response> delete_contact_address(contact_address_id)

Deletes a contact address

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

api_instance = OpenapiClient::ContactAddressApi.new
contact_address_id = 56 # Integer | Id of contact address resource to delete

begin
  # Deletes a contact address
  result = api_instance.delete_contact_address(contact_address_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->delete_contact_address: #{e}"
end
```

#### Using the delete_contact_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_contact_address_with_http_info(contact_address_id)

```ruby
begin
  # Deletes a contact address
  data, status_code, headers = api_instance.delete_contact_address_with_http_info(contact_address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->delete_contact_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_address_id** | **Integer** | Id of contact address resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_addresses

> <GetContactAddresses200Response> get_contact_addresses

Retrieve contact addresses

Retrieve all contact addresses

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

api_instance = OpenapiClient::ContactAddressApi.new

begin
  # Retrieve contact addresses
  result = api_instance.get_contact_addresses
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->get_contact_addresses: #{e}"
end
```

#### Using the get_contact_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactAddresses200Response>, Integer, Hash)> get_contact_addresses_with_http_info

```ruby
begin
  # Retrieve contact addresses
  data, status_code, headers = api_instance.get_contact_addresses_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactAddresses200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->get_contact_addresses_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetContactAddresses200Response**](GetContactAddresses200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact_address

> <ModelContactAddressResponse> update_contact_address(contact_address_id, opts)

update a existing contact address

update a existing contact address.

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

api_instance = OpenapiClient::ContactAddressApi.new
contact_address_id = 56 # Integer | ID of contact address to return
opts = {
  model_contact_address_update: OpenapiClient::ModelContactAddressUpdate.new # ModelContactAddressUpdate | Creation data
}

begin
  # update a existing contact address
  result = api_instance.update_contact_address(contact_address_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->update_contact_address: #{e}"
end
```

#### Using the update_contact_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactAddressResponse>, Integer, Hash)> update_contact_address_with_http_info(contact_address_id, opts)

```ruby
begin
  # update a existing contact address
  data, status_code, headers = api_instance.update_contact_address_with_http_info(contact_address_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactAddressResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactAddressApi->update_contact_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_address_id** | **Integer** | ID of contact address to return |  |
| **model_contact_address_update** | [**ModelContactAddressUpdate**](ModelContactAddressUpdate.md) | Creation data | [optional] |

### Return type

[**ModelContactAddressResponse**](ModelContactAddressResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

