# OpenapiClient::OrderApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contract_note_from_order**](OrderApi.md#create_contract_note_from_order) | **POST** /Order/Factory/createContractNoteFromOrder | Create contract note from order |
| [**create_order**](OrderApi.md#create_order) | **POST** /Order/Factory/saveOrder | Create a new order |
| [**create_packing_list_from_order**](OrderApi.md#create_packing_list_from_order) | **POST** /Order/Factory/createPackingListFromOrder | Create packing list from order |
| [**delete_order**](OrderApi.md#delete_order) | **DELETE** /Order/{orderId} | Deletes an order |
| [**get_discounts**](OrderApi.md#get_discounts) | **GET** /Order/{orderId}/getDiscounts | Find order discounts |
| [**get_order_by_id**](OrderApi.md#get_order_by_id) | **GET** /Order/{orderId} | Find order by ID |
| [**get_order_positions_by_id**](OrderApi.md#get_order_positions_by_id) | **GET** /Order/{orderId}/getPositions | Find order positions |
| [**get_orders**](OrderApi.md#get_orders) | **GET** /Order | Retrieve orders |
| [**get_related_objects**](OrderApi.md#get_related_objects) | **GET** /Order/{orderId}/getRelatedObjects | Find related objects |
| [**order_get_pdf**](OrderApi.md#order_get_pdf) | **GET** /Order/{orderId}/getPdf | Retrieve pdf document of an order |
| [**order_send_by**](OrderApi.md#order_send_by) | **PUT** /Order/{orderId}/sendBy | Mark order as sent |
| [**sendorder_via_e_mail**](OrderApi.md#sendorder_via_e_mail) | **POST** /Order/{orderId}/sendViaEmail | Send order via email |
| [**update_order**](OrderApi.md#update_order) | **PUT** /Order/{orderId} | Update an existing order |


## create_contract_note_from_order

> <ModelOrderResponse> create_contract_note_from_order(order_id, order_object_name, opts)

Create contract note from order

Create contract note from order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | the id of the order
order_object_name = 'Order' # String | Model name, which is 'Order'
opts = {
  model_create_packing_list_from_order: OpenapiClient::ModelCreatePackingListFromOrder.new({id: 37, object_name: 'Order'}) # ModelCreatePackingListFromOrder | Create contract note
}

begin
  # Create contract note from order
  result = api_instance.create_contract_note_from_order(order_id, order_object_name, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->create_contract_note_from_order: #{e}"
end
```

#### Using the create_contract_note_from_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelOrderResponse>, Integer, Hash)> create_contract_note_from_order_with_http_info(order_id, order_object_name, opts)

```ruby
begin
  # Create contract note from order
  data, status_code, headers = api_instance.create_contract_note_from_order_with_http_info(order_id, order_object_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelOrderResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->create_contract_note_from_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | the id of the order |  |
| **order_object_name** | **String** | Model name, which is &#39;Order&#39; |  |
| **model_create_packing_list_from_order** | [**ModelCreatePackingListFromOrder**](ModelCreatePackingListFromOrder.md) | Create contract note | [optional] |

### Return type

[**ModelOrderResponse**](ModelOrderResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_order

> <SaveOrderResponse> create_order(opts)

Create a new order

Creates an order to which positions can be added later.

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

api_instance = OpenapiClient::OrderApi.new
opts = {
  save_order: OpenapiClient::SaveOrder.new({order: OpenapiClient::ModelOrder.new({map_all: false, order_number: 'Offer-1000', contact: OpenapiClient::ModelOrderContact.new({id: 37, object_name: 'Contact'}), order_date: Time.now, status: 100, header: 'My Offer-1000', address_country: OpenapiClient::ModelOrderAddressCountry.new({id: 37, object_name: 'StaticCountry'}), version: 0, contact_person: OpenapiClient::ModelOrderContactPerson.new({id: 0, object_name: 'SevUser'}), tax_rate: 0, tax_rule: OpenapiClient::ModelOrderResponseTaxRule.new({id: '1', object_name: 'TaxRule'}), tax_text: 'Umsatzsteuer 19%', tax_type: 'default', currency: 'EUR'})}) # SaveOrder | Creation data. Please be aware, that you need to provide at least all required parameter      of the order model!
}

begin
  # Create a new order
  result = api_instance.create_order(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SaveOrderResponse>, Integer, Hash)> create_order_with_http_info(opts)

```ruby
begin
  # Create a new order
  data, status_code, headers = api_instance.create_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SaveOrderResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_order** | [**SaveOrder**](SaveOrder.md) | Creation data. Please be aware, that you need to provide at least all required parameter      of the order model! | [optional] |

### Return type

[**SaveOrderResponse**](SaveOrderResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_packing_list_from_order

> <ModelOrderResponse> create_packing_list_from_order(order_id, order_object_name, opts)

Create packing list from order

Create packing list from order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | the id of the order
order_object_name = 'Order' # String | Model name, which is 'Order'
opts = {
  model_create_packing_list_from_order: OpenapiClient::ModelCreatePackingListFromOrder.new({id: 37, object_name: 'Order'}) # ModelCreatePackingListFromOrder | Create packing list
}

begin
  # Create packing list from order
  result = api_instance.create_packing_list_from_order(order_id, order_object_name, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->create_packing_list_from_order: #{e}"
end
```

#### Using the create_packing_list_from_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelOrderResponse>, Integer, Hash)> create_packing_list_from_order_with_http_info(order_id, order_object_name, opts)

```ruby
begin
  # Create packing list from order
  data, status_code, headers = api_instance.create_packing_list_from_order_with_http_info(order_id, order_object_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelOrderResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->create_packing_list_from_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | the id of the order |  |
| **order_object_name** | **String** | Model name, which is &#39;Order&#39; |  |
| **model_create_packing_list_from_order** | [**ModelCreatePackingListFromOrder**](ModelCreatePackingListFromOrder.md) | Create packing list | [optional] |

### Return type

[**ModelOrderResponse**](ModelOrderResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_order

> <DeleteCheckAccount200Response> delete_order(order_id)

Deletes an order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | Id of order resource to delete

begin
  # Deletes an order
  result = api_instance.delete_order(order_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->delete_order: #{e}"
end
```

#### Using the delete_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_order_with_http_info(order_id)

```ruby
begin
  # Deletes an order
  data, status_code, headers = api_instance.delete_order_with_http_info(order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->delete_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | Id of order resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discounts

> <GetDiscounts200Response> get_discounts(order_id, opts)

Find order discounts

Returns all discounts of an order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to return the positions
opts = {
  limit: 56, # Integer | limits the number of entries returned
  offset: 56, # Integer | set the index where the returned entries start
  embed: ['inner_example'] # Array<String> | Get some additional information. Embed can handle multiple values, they must be separated by comma.
}

begin
  # Find order discounts
  result = api_instance.get_discounts(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_discounts: #{e}"
end
```

#### Using the get_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDiscounts200Response>, Integer, Hash)> get_discounts_with_http_info(order_id, opts)

```ruby
begin
  # Find order discounts
  data, status_code, headers = api_instance.get_discounts_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDiscounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_discounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to return the positions |  |
| **limit** | **Integer** | limits the number of entries returned | [optional] |
| **offset** | **Integer** | set the index where the returned entries start | [optional] |
| **embed** | [**Array&lt;String&gt;**](String.md) | Get some additional information. Embed can handle multiple values, they must be separated by comma. | [optional] |

### Return type

[**GetDiscounts200Response**](GetDiscounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_by_id

> <GetOrders200Response> get_order_by_id(order_id)

Find order by ID

Returns a single order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to return

begin
  # Find order by ID
  result = api_instance.get_order_by_id(order_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_order_by_id: #{e}"
end
```

#### Using the get_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrders200Response>, Integer, Hash)> get_order_by_id_with_http_info(order_id)

```ruby
begin
  # Find order by ID
  data, status_code, headers = api_instance.get_order_by_id_with_http_info(order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to return |  |

### Return type

[**GetOrders200Response**](GetOrders200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_order_positions_by_id

> <GetOrderPositionsById200Response> get_order_positions_by_id(order_id, opts)

Find order positions

Returns all positions of an order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to return the positions
opts = {
  limit: 56, # Integer | limits the number of entries returned
  offset: 56, # Integer | set the index where the returned entries start
  embed: ['inner_example'] # Array<String> | Get some additional information. Embed can handle multiple values, they must be separated by comma.
}

begin
  # Find order positions
  result = api_instance.get_order_positions_by_id(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_order_positions_by_id: #{e}"
end
```

#### Using the get_order_positions_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderPositionsById200Response>, Integer, Hash)> get_order_positions_by_id_with_http_info(order_id, opts)

```ruby
begin
  # Find order positions
  data, status_code, headers = api_instance.get_order_positions_by_id_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderPositionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_order_positions_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to return the positions |  |
| **limit** | **Integer** | limits the number of entries returned | [optional] |
| **offset** | **Integer** | set the index where the returned entries start | [optional] |
| **embed** | [**Array&lt;String&gt;**](String.md) | Get some additional information. Embed can handle multiple values, they must be separated by comma. | [optional] |

### Return type

[**GetOrderPositionsById200Response**](GetOrderPositionsById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orders

> <GetOrders200Response> get_orders(opts)

Retrieve orders

There are a multitude of parameter which can be used to filter. A few of them are attached but      for a complete list please check out <a href='#tag/Order/How-to-filter-for-certain-orders'>this</a> list

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

api_instance = OpenapiClient::OrderApi.new
opts = {
  status: 100, # Integer | Status of the order
  order_number: 'order_number_example', # String | Retrieve all orders with this order number
  start_date: 56, # Integer | Retrieve all orders with a date equal or higher
  end_date: 56, # Integer | Retrieve all orders with a date equal or lower
  contact_id: 56, # Integer | Retrieve all orders with this contact. Must be provided with contact[objectName]
  contact_object_name: 'contact_object_name_example' # String | Only required if contact[id] was provided. 'Contact' should be used as value.
}

begin
  # Retrieve orders
  result = api_instance.get_orders(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrders200Response>, Integer, Hash)> get_orders_with_http_info(opts)

```ruby
begin
  # Retrieve orders
  data, status_code, headers = api_instance.get_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** | Status of the order | [optional] |
| **order_number** | **String** | Retrieve all orders with this order number | [optional] |
| **start_date** | **Integer** | Retrieve all orders with a date equal or higher | [optional] |
| **end_date** | **Integer** | Retrieve all orders with a date equal or lower | [optional] |
| **contact_id** | **Integer** | Retrieve all orders with this contact. Must be provided with contact[objectName] | [optional] |
| **contact_object_name** | **String** | Only required if contact[id] was provided. &#39;Contact&#39; should be used as value. | [optional] |

### Return type

[**GetOrders200Response**](GetOrders200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_related_objects

> <GetOrderPositionsById200Response> get_related_objects(order_id, opts)

Find related objects

Get related objects of a specified order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to return the positions
opts = {
  include_itself: true, # Boolean | Define if the related objects include the order itself
  sort_by_type: true, # Boolean | Define if you want the related objects sorted by type
  embed: ['inner_example'] # Array<String> | Get some additional information. Embed can handle multiple values, they must be separated by comma.
}

begin
  # Find related objects
  result = api_instance.get_related_objects(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_related_objects: #{e}"
end
```

#### Using the get_related_objects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrderPositionsById200Response>, Integer, Hash)> get_related_objects_with_http_info(order_id, opts)

```ruby
begin
  # Find related objects
  data, status_code, headers = api_instance.get_related_objects_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrderPositionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->get_related_objects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to return the positions |  |
| **include_itself** | **Boolean** | Define if the related objects include the order itself | [optional] |
| **sort_by_type** | **Boolean** | Define if you want the related objects sorted by type | [optional] |
| **embed** | [**Array&lt;String&gt;**](String.md) | Get some additional information. Embed can handle multiple values, they must be separated by comma. | [optional] |

### Return type

[**GetOrderPositionsById200Response**](GetOrderPositionsById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_get_pdf

> <OrderGetPdf200Response> order_get_pdf(order_id, opts)

Retrieve pdf document of an order

Retrieves the pdf document of an order with additional metadata and commit the order.

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order from which you want the pdf
opts = {
  download: true, # Boolean | If u want to download the pdf of the order.
  prevent_send_by: true # Boolean | Defines if u want to send the order.
}

begin
  # Retrieve pdf document of an order
  result = api_instance.order_get_pdf(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->order_get_pdf: #{e}"
end
```

#### Using the order_get_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderGetPdf200Response>, Integer, Hash)> order_get_pdf_with_http_info(order_id, opts)

```ruby
begin
  # Retrieve pdf document of an order
  data, status_code, headers = api_instance.order_get_pdf_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderGetPdf200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->order_get_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order from which you want the pdf |  |
| **download** | **Boolean** | If u want to download the pdf of the order. | [optional] |
| **prevent_send_by** | **Boolean** | Defines if u want to send the order. | [optional] |

### Return type

[**OrderGetPdf200Response**](OrderGetPdf200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_send_by

> <ModelOrderResponse> order_send_by(order_id, opts)

Mark order as sent

Marks an order as sent by a chosen send type.

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to mark as sent
opts = {
  order_send_by_request: OpenapiClient::OrderSendByRequest.new({send_type: 'VPR', send_draft: false}) # OrderSendByRequest | Specify the send type
}

begin
  # Mark order as sent
  result = api_instance.order_send_by(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->order_send_by: #{e}"
end
```

#### Using the order_send_by_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelOrderResponse>, Integer, Hash)> order_send_by_with_http_info(order_id, opts)

```ruby
begin
  # Mark order as sent
  data, status_code, headers = api_instance.order_send_by_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelOrderResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->order_send_by_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to mark as sent |  |
| **order_send_by_request** | [**OrderSendByRequest**](OrderSendByRequest.md) | Specify the send type | [optional] |

### Return type

[**ModelOrderResponse**](ModelOrderResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sendorder_via_e_mail

> <SendorderViaEMail201Response> sendorder_via_e_mail(order_id, opts)

Send order via email

This endpoint sends the specified order to a customer via email.<br>      This will automatically mark the order as sent.<br>      Please note, that in production an order is not allowed to be changed after this happened!

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to be sent via email
opts = {
  sendorder_via_e_mail_request: OpenapiClient::SendorderViaEMailRequest.new({to_email: 'to_email_example', subject: 'subject_example', text: 'text_example'}) # SendorderViaEMailRequest | Mail data
}

begin
  # Send order via email
  result = api_instance.sendorder_via_e_mail(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->sendorder_via_e_mail: #{e}"
end
```

#### Using the sendorder_via_e_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendorderViaEMail201Response>, Integer, Hash)> sendorder_via_e_mail_with_http_info(order_id, opts)

```ruby
begin
  # Send order via email
  data, status_code, headers = api_instance.sendorder_via_e_mail_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendorderViaEMail201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->sendorder_via_e_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to be sent via email |  |
| **sendorder_via_e_mail_request** | [**SendorderViaEMailRequest**](SendorderViaEMailRequest.md) | Mail data | [optional] |

### Return type

[**SendorderViaEMail201Response**](SendorderViaEMail201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_order

> <ModelOrderResponse> update_order(order_id, opts)

Update an existing order

Update an order

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

api_instance = OpenapiClient::OrderApi.new
order_id = 56 # Integer | ID of order to update
opts = {
  model_order_update: OpenapiClient::ModelOrderUpdate.new # ModelOrderUpdate | Update data
}

begin
  # Update an existing order
  result = api_instance.update_order(order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->update_order: #{e}"
end
```

#### Using the update_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelOrderResponse>, Integer, Hash)> update_order_with_http_info(order_id, opts)

```ruby
begin
  # Update an existing order
  data, status_code, headers = api_instance.update_order_with_http_info(order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelOrderResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling OrderApi->update_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** | ID of order to update |  |
| **model_order_update** | [**ModelOrderUpdate**](ModelOrderUpdate.md) | Update data | [optional] |

### Return type

[**ModelOrderResponse**](ModelOrderResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

