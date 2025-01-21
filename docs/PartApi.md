# OpenapiClient::PartApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_part**](PartApi.md#create_part) | **POST** /Part | Create a new part |
| [**get_part_by_id**](PartApi.md#get_part_by_id) | **GET** /Part/{partId} | Find part by ID |
| [**get_parts**](PartApi.md#get_parts) | **GET** /Part | Retrieve parts |
| [**part_get_stock**](PartApi.md#part_get_stock) | **GET** /Part/{partId}/getStock | Get stock of a part |
| [**update_part**](PartApi.md#update_part) | **PUT** /Part/{partId} | Update an existing part |


## create_part

> <ModelPart> create_part(opts)

Create a new part

Creates a part in your sevdesk inventory.

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

api_instance = OpenapiClient::PartApi.new
opts = {
  model_part: OpenapiClient::ModelPart.new({name: 'Dragonglass', part_number: 'Part-1000', stock: 10000, unity: OpenapiClient::ModelPartUnity.new({id: 1, object_name: 'Unity'}), tax_rate: 19}) # ModelPart | Creation data. Please be aware, that you need to provide at least all required parameter      of the part model!
}

begin
  # Create a new part
  result = api_instance.create_part(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->create_part: #{e}"
end
```

#### Using the create_part_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelPart>, Integer, Hash)> create_part_with_http_info(opts)

```ruby
begin
  # Create a new part
  data, status_code, headers = api_instance.create_part_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelPart>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->create_part_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_part** | [**ModelPart**](ModelPart.md) | Creation data. Please be aware, that you need to provide at least all required parameter      of the part model! | [optional] |

### Return type

[**ModelPart**](ModelPart.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_part_by_id

> <GetParts200Response> get_part_by_id(part_id)

Find part by ID

Returns a single part

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

api_instance = OpenapiClient::PartApi.new
part_id = 56 # Integer | ID of part to return

begin
  # Find part by ID
  result = api_instance.get_part_by_id(part_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->get_part_by_id: #{e}"
end
```

#### Using the get_part_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetParts200Response>, Integer, Hash)> get_part_by_id_with_http_info(part_id)

```ruby
begin
  # Find part by ID
  data, status_code, headers = api_instance.get_part_by_id_with_http_info(part_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetParts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->get_part_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part_id** | **Integer** | ID of part to return |  |

### Return type

[**GetParts200Response**](GetParts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_parts

> <GetParts200Response> get_parts(opts)

Retrieve parts

Retrieve all parts in your sevdesk inventory according to the applied filters.

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

api_instance = OpenapiClient::PartApi.new
opts = {
  part_number: 'part_number_example', # String | Retrieve all parts with this part number
  name: 'name_example' # String | Retrieve all parts with this name
}

begin
  # Retrieve parts
  result = api_instance.get_parts(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->get_parts: #{e}"
end
```

#### Using the get_parts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetParts200Response>, Integer, Hash)> get_parts_with_http_info(opts)

```ruby
begin
  # Retrieve parts
  data, status_code, headers = api_instance.get_parts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetParts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->get_parts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part_number** | **String** | Retrieve all parts with this part number | [optional] |
| **name** | **String** | Retrieve all parts with this name | [optional] |

### Return type

[**GetParts200Response**](GetParts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## part_get_stock

> <PartGetStock200Response> part_get_stock(part_id)

Get stock of a part

Returns the current stock amount of the given part.

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

api_instance = OpenapiClient::PartApi.new
part_id = 56 # Integer | ID of part for which you want the current stock.

begin
  # Get stock of a part
  result = api_instance.part_get_stock(part_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->part_get_stock: #{e}"
end
```

#### Using the part_get_stock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartGetStock200Response>, Integer, Hash)> part_get_stock_with_http_info(part_id)

```ruby
begin
  # Get stock of a part
  data, status_code, headers = api_instance.part_get_stock_with_http_info(part_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartGetStock200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->part_get_stock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part_id** | **Integer** | ID of part for which you want the current stock. |  |

### Return type

[**PartGetStock200Response**](PartGetStock200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_part

> <ModelPart> update_part(part_id, opts)

Update an existing part

Update a part

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

api_instance = OpenapiClient::PartApi.new
part_id = 56 # Integer | ID of part to update
opts = {
  model_part_update: OpenapiClient::ModelPartUpdate.new # ModelPartUpdate | Update data
}

begin
  # Update an existing part
  result = api_instance.update_part(part_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->update_part: #{e}"
end
```

#### Using the update_part_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelPart>, Integer, Hash)> update_part_with_http_info(part_id, opts)

```ruby
begin
  # Update an existing part
  data, status_code, headers = api_instance.update_part_with_http_info(part_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelPart>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PartApi->update_part_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part_id** | **Integer** | ID of part to update |  |
| **model_part_update** | [**ModelPartUpdate**](ModelPartUpdate.md) | Update data | [optional] |

### Return type

[**ModelPart**](ModelPart.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

