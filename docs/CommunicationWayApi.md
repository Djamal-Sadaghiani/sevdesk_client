# OpenapiClient::CommunicationWayApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_communication_way**](CommunicationWayApi.md#create_communication_way) | **POST** /CommunicationWay | Create a new contact communication way |
| [**delete_communication_way**](CommunicationWayApi.md#delete_communication_way) | **DELETE** /CommunicationWay/{communicationWayId} | Deletes a communication way |
| [**get_communication_way_by_id**](CommunicationWayApi.md#get_communication_way_by_id) | **GET** /CommunicationWay/{communicationWayId} | Find communication way by ID |
| [**get_communication_way_keys**](CommunicationWayApi.md#get_communication_way_keys) | **GET** /CommunicationWayKey | Retrieve communication way keys |
| [**get_communication_ways**](CommunicationWayApi.md#get_communication_ways) | **GET** /CommunicationWay | Retrieve communication ways |
| [**update_communication_way**](CommunicationWayApi.md#update_communication_way) | **PUT** /CommunicationWay/{communicationWayId} | Update a existing communication way |


## create_communication_way

> <ModelCommunicationWayResponse> create_communication_way(opts)

Create a new contact communication way

Creates a new contact communication way.

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

api_instance = OpenapiClient::CommunicationWayApi.new
opts = {
  model_communication_way: OpenapiClient::ModelCommunicationWay.new({type: 'EMAIL', value: 'value_example', key: OpenapiClient::ModelCommunicationWayKey.new({id: 37, object_name: 'CommunicationWayKey'})}) # ModelCommunicationWay | Creation data
}

begin
  # Create a new contact communication way
  result = api_instance.create_communication_way(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->create_communication_way: #{e}"
end
```

#### Using the create_communication_way_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCommunicationWayResponse>, Integer, Hash)> create_communication_way_with_http_info(opts)

```ruby
begin
  # Create a new contact communication way
  data, status_code, headers = api_instance.create_communication_way_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCommunicationWayResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->create_communication_way_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_communication_way** | [**ModelCommunicationWay**](ModelCommunicationWay.md) | Creation data | [optional] |

### Return type

[**ModelCommunicationWayResponse**](ModelCommunicationWayResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_communication_way

> <DeleteCheckAccount200Response> delete_communication_way(communication_way_id)

Deletes a communication way

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

api_instance = OpenapiClient::CommunicationWayApi.new
communication_way_id = 56 # Integer | Id of communication way resource to delete

begin
  # Deletes a communication way
  result = api_instance.delete_communication_way(communication_way_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->delete_communication_way: #{e}"
end
```

#### Using the delete_communication_way_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_communication_way_with_http_info(communication_way_id)

```ruby
begin
  # Deletes a communication way
  data, status_code, headers = api_instance.delete_communication_way_with_http_info(communication_way_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->delete_communication_way_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **communication_way_id** | **Integer** | Id of communication way resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_communication_way_by_id

> <GetCommunicationWays200Response> get_communication_way_by_id(communication_way_id)

Find communication way by ID

Returns a single communication way

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

api_instance = OpenapiClient::CommunicationWayApi.new
communication_way_id = 56 # Integer | ID of communication way to return

begin
  # Find communication way by ID
  result = api_instance.get_communication_way_by_id(communication_way_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->get_communication_way_by_id: #{e}"
end
```

#### Using the get_communication_way_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCommunicationWays200Response>, Integer, Hash)> get_communication_way_by_id_with_http_info(communication_way_id)

```ruby
begin
  # Find communication way by ID
  data, status_code, headers = api_instance.get_communication_way_by_id_with_http_info(communication_way_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCommunicationWays200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->get_communication_way_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **communication_way_id** | **Integer** | ID of communication way to return |  |

### Return type

[**GetCommunicationWays200Response**](GetCommunicationWays200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_communication_way_keys

> <GetCommunicationWayKeys200Response> get_communication_way_keys

Retrieve communication way keys

Returns all communication way keys.

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

api_instance = OpenapiClient::CommunicationWayApi.new

begin
  # Retrieve communication way keys
  result = api_instance.get_communication_way_keys
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->get_communication_way_keys: #{e}"
end
```

#### Using the get_communication_way_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCommunicationWayKeys200Response>, Integer, Hash)> get_communication_way_keys_with_http_info

```ruby
begin
  # Retrieve communication way keys
  data, status_code, headers = api_instance.get_communication_way_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCommunicationWayKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->get_communication_way_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCommunicationWayKeys200Response**](GetCommunicationWayKeys200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_communication_ways

> <GetCommunicationWays200Response> get_communication_ways(opts)

Retrieve communication ways

Returns all communication ways which have been added up until now. Filters can be added.

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

api_instance = OpenapiClient::CommunicationWayApi.new
opts = {
  contact_id: 'contact_id_example', # String | ID of contact for which you want the communication ways.
  contact_object_name: 'Contact', # String | Object name. Only needed if you also defined the ID of a contact.
  type: 'PHONE', # String | Type of the communication ways you want to get.
  main: '0' # String | Define if you only want the main communication way.
}

begin
  # Retrieve communication ways
  result = api_instance.get_communication_ways(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->get_communication_ways: #{e}"
end
```

#### Using the get_communication_ways_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCommunicationWays200Response>, Integer, Hash)> get_communication_ways_with_http_info(opts)

```ruby
begin
  # Retrieve communication ways
  data, status_code, headers = api_instance.get_communication_ways_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCommunicationWays200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->get_communication_ways_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | ID of contact for which you want the communication ways. | [optional] |
| **contact_object_name** | **String** | Object name. Only needed if you also defined the ID of a contact. | [optional] |
| **type** | **String** | Type of the communication ways you want to get. | [optional] |
| **main** | **String** | Define if you only want the main communication way. | [optional] |

### Return type

[**GetCommunicationWays200Response**](GetCommunicationWays200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_communication_way

> <ModelCommunicationWayResponse> update_communication_way(communication_way_id, opts)

Update a existing communication way

Update a communication way

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

api_instance = OpenapiClient::CommunicationWayApi.new
communication_way_id = 56 # Integer | ID of CommunicationWay to update
opts = {
  model_communication_way_update: OpenapiClient::ModelCommunicationWayUpdate.new # ModelCommunicationWayUpdate | Update data
}

begin
  # Update a existing communication way
  result = api_instance.update_communication_way(communication_way_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->update_communication_way: #{e}"
end
```

#### Using the update_communication_way_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCommunicationWayResponse>, Integer, Hash)> update_communication_way_with_http_info(communication_way_id, opts)

```ruby
begin
  # Update a existing communication way
  data, status_code, headers = api_instance.update_communication_way_with_http_info(communication_way_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCommunicationWayResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CommunicationWayApi->update_communication_way_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **communication_way_id** | **Integer** | ID of CommunicationWay to update |  |
| **model_communication_way_update** | [**ModelCommunicationWayUpdate**](ModelCommunicationWayUpdate.md) | Update data | [optional] |

### Return type

[**ModelCommunicationWayResponse**](ModelCommunicationWayResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

