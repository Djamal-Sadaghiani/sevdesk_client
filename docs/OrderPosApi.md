# OpenapiClient::OrderPosApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_order_pos**](OrderPosApi.md#delete_order_pos) | **DELETE** /OrderPos/{orderPosId} | Deletes an order Position |
| [**get_order_position_by_id**](OrderPosApi.md#get_order_position_by_id) | **GET** /OrderPos/{orderPosId} | Find order position by ID |
| [**get_order_positions**](OrderPosApi.md#get_order_positions) | **GET** /OrderPos | Retrieve order positions |
| [**update_order_position**](OrderPosApi.md#update_order_position) | **PUT** /OrderPos/{orderPosId} | Update an existing order position |


## delete_order_pos

> <DeleteCheckAccount200Response> delete_order_pos(order_pos_id)

Deletes an order Position

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

api_instance = OpenapiClient::OrderPosApi.new
order_pos_id = 56 # Integer | Id of order position resource to delete

begin
  # Deletes an order Position
  result = api_instance.delete_order_pos(order_pos_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->delete_order_pos: #{e}"
end
```

#### Using the delete_order_pos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_order_pos_with_http_info(order_pos_id)

```ruby
begin
  # Deletes an order Position
  data, status_code, headers = api_instance.delete_order_pos_with_http_info(order_pos_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->delete_order_pos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_pos_id** | **Integer** | Id of order position resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_position_by_id

> <GetOrderPositionsById200Response> get_order_position_by_id(order_pos_id)

Find order position by ID

Returns a single order position

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

api_instance = OpenapiClient::OrderPosApi.new
order_pos_id = 56 # Integer | ID of order position to return

begin
  # Find order position by ID
  result = api_instance.get_order_position_by_id(order_pos_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->get_order_position_by_id: #{e}"
end
```

#### Using the get_order_position_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderPositionsById200Response>, Integer, Hash)> get_order_position_by_id_with_http_info(order_pos_id)

```ruby
begin
  # Find order position by ID
  data, status_code, headers = api_instance.get_order_position_by_id_with_http_info(order_pos_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderPositionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->get_order_position_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_pos_id** | **Integer** | ID of order position to return |  |

### Return type

[**GetOrderPositionsById200Response**](GetOrderPositionsById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_positions

> <GetOrderPositionsById200Response> get_order_positions(opts)

Retrieve order positions

Retrieve all order positions depending on the filters defined in the query.

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

api_instance = OpenapiClient::OrderPosApi.new
opts = {
  order_id: 56, # Integer | Retrieve all order positions belonging to this order. Must be provided with voucher[objectName]
  order_object_name: 'order_object_name_example' # String | Only required if order[id] was provided. 'Order' should be used as value.
}

begin
  # Retrieve order positions
  result = api_instance.get_order_positions(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->get_order_positions: #{e}"
end
```

#### Using the get_order_positions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderPositionsById200Response>, Integer, Hash)> get_order_positions_with_http_info(opts)

```ruby
begin
  # Retrieve order positions
  data, status_code, headers = api_instance.get_order_positions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderPositionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->get_order_positions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | Retrieve all order positions belonging to this order. Must be provided with voucher[objectName] | [optional] |
| **order_object_name** | **String** | Only required if order[id] was provided. &#39;Order&#39; should be used as value. | [optional] |

### Return type

[**GetOrderPositionsById200Response**](GetOrderPositionsById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order_position

> <ModelOrderPosResponse> update_order_position(order_pos_id, opts)

Update an existing order position

Update an order position

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

api_instance = OpenapiClient::OrderPosApi.new
order_pos_id = 56 # Integer | ID of order position to update
opts = {
  model_order_pos_update: OpenapiClient::ModelOrderPosUpdate.new # ModelOrderPosUpdate | Update data
}

begin
  # Update an existing order position
  result = api_instance.update_order_position(order_pos_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->update_order_position: #{e}"
end
```

#### Using the update_order_position_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelOrderPosResponse>, Integer, Hash)> update_order_position_with_http_info(order_pos_id, opts)

```ruby
begin
  # Update an existing order position
  data, status_code, headers = api_instance.update_order_position_with_http_info(order_pos_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelOrderPosResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderPosApi->update_order_position_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_pos_id** | **Integer** | ID of order position to update |  |
| **model_order_pos_update** | [**ModelOrderPosUpdate**](ModelOrderPosUpdate.md) | Update data | [optional] |

### Return type

[**ModelOrderPosResponse**](ModelOrderPosResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

