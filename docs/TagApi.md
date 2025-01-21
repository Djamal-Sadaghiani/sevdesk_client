# OpenapiClient::TagApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tag**](TagApi.md#create_tag) | **POST** /Tag/Factory/create | Create a new tag |
| [**delete_tag**](TagApi.md#delete_tag) | **DELETE** /Tag/{tagId} | Deletes a tag |
| [**get_tag_by_id**](TagApi.md#get_tag_by_id) | **GET** /Tag/{tagId} | Find tag by ID |
| [**get_tag_relations**](TagApi.md#get_tag_relations) | **GET** /TagRelation | Retrieve tag relations |
| [**get_tags**](TagApi.md#get_tags) | **GET** /Tag | Retrieve tags |
| [**update_tag**](TagApi.md#update_tag) | **PUT** /Tag/{tagId} | Update tag |


## create_tag

> <ModelTagCreateResponse> create_tag(opts)

Create a new tag

Create a new tag

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

api_instance = OpenapiClient::TagApi.new
opts = {
  create_tag_request: OpenapiClient::CreateTagRequest.new({object: OpenapiClient::CreateTagRequestObject.new({id: 1, object_name: 'Invoice'})}) # CreateTagRequest | 
}

begin
  # Create a new tag
  result = api_instance.create_tag(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->create_tag: #{e}"
end
```

#### Using the create_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelTagCreateResponse>, Integer, Hash)> create_tag_with_http_info(opts)

```ruby
begin
  # Create a new tag
  data, status_code, headers = api_instance.create_tag_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelTagCreateResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->create_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag_request** | [**CreateTagRequest**](CreateTagRequest.md) |  | [optional] |

### Return type

[**ModelTagCreateResponse**](ModelTagCreateResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_tag

> <DeleteCheckAccount200Response> delete_tag(tag_id)

Deletes a tag

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

api_instance = OpenapiClient::TagApi.new
tag_id = 56 # Integer | Id of tag to delete

begin
  # Deletes a tag
  result = api_instance.delete_tag(tag_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_tag_with_http_info(tag_id)

```ruby
begin
  # Deletes a tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **Integer** | Id of tag to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_by_id

> <GetTags200Response> get_tag_by_id(tag_id)

Find tag by ID

Returns a single tag

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

api_instance = OpenapiClient::TagApi.new
tag_id = 56 # Integer | ID of tag to return

begin
  # Find tag by ID
  result = api_instance.get_tag_by_id(tag_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->get_tag_by_id: #{e}"
end
```

#### Using the get_tag_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTags200Response>, Integer, Hash)> get_tag_by_id_with_http_info(tag_id)

```ruby
begin
  # Find tag by ID
  data, status_code, headers = api_instance.get_tag_by_id_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTags200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->get_tag_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **Integer** | ID of tag to return |  |

### Return type

[**GetTags200Response**](GetTags200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag_relations

> <GetTagRelations200Response> get_tag_relations

Retrieve tag relations

Retrieve all tag relations

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

api_instance = OpenapiClient::TagApi.new

begin
  # Retrieve tag relations
  result = api_instance.get_tag_relations
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->get_tag_relations: #{e}"
end
```

#### Using the get_tag_relations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTagRelations200Response>, Integer, Hash)> get_tag_relations_with_http_info

```ruby
begin
  # Retrieve tag relations
  data, status_code, headers = api_instance.get_tag_relations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTagRelations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->get_tag_relations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTagRelations200Response**](GetTagRelations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tags

> <GetTags200Response> get_tags(opts)

Retrieve tags

Retrieve all tags

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

api_instance = OpenapiClient::TagApi.new
opts = {
  id: 8.14, # Float | ID of the Tag
  name: 'name_example' # String | Name of the Tag
}

begin
  # Retrieve tags
  result = api_instance.get_tags(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->get_tags: #{e}"
end
```

#### Using the get_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTags200Response>, Integer, Hash)> get_tags_with_http_info(opts)

```ruby
begin
  # Retrieve tags
  data, status_code, headers = api_instance.get_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTags200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->get_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | ID of the Tag | [optional] |
| **name** | **String** | Name of the Tag | [optional] |

### Return type

[**GetTags200Response**](GetTags200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tag

> <ModelTagResponse> update_tag(tag_id, opts)

Update tag

Update an existing tag

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

api_instance = OpenapiClient::TagApi.new
tag_id = 56 # Integer | ID of tag you want to update
opts = {
  update_tag_request: OpenapiClient::UpdateTagRequest.new # UpdateTagRequest | 
}

begin
  # Update tag
  result = api_instance.update_tag(tag_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->update_tag: #{e}"
end
```

#### Using the update_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelTagResponse>, Integer, Hash)> update_tag_with_http_info(tag_id, opts)

```ruby
begin
  # Update tag
  data, status_code, headers = api_instance.update_tag_with_http_info(tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelTagResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TagApi->update_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **Integer** | ID of tag you want to update |  |
| **update_tag_request** | [**UpdateTagRequest**](UpdateTagRequest.md) |  | [optional] |

### Return type

[**ModelTagResponse**](ModelTagResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

