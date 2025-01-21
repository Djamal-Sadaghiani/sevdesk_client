# OpenapiClient::ContactFieldApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_field**](ContactFieldApi.md#create_contact_field) | **POST** /ContactCustomField | Create contact field |
| [**create_contact_field_setting**](ContactFieldApi.md#create_contact_field_setting) | **POST** /ContactCustomFieldSetting | Create contact field setting |
| [**delete_contact_custom_field_id**](ContactFieldApi.md#delete_contact_custom_field_id) | **DELETE** /ContactCustomField/{contactCustomFieldId} | delete a contact field |
| [**delete_contact_field_setting**](ContactFieldApi.md#delete_contact_field_setting) | **DELETE** /ContactCustomFieldSetting/{contactCustomFieldSettingId} | Deletes a contact field setting |
| [**get_contact_field_setting_by_id**](ContactFieldApi.md#get_contact_field_setting_by_id) | **GET** /ContactCustomFieldSetting/{contactCustomFieldSettingId} | Find contact field setting by ID |
| [**get_contact_field_settings**](ContactFieldApi.md#get_contact_field_settings) | **GET** /ContactCustomFieldSetting | Retrieve contact field settings |
| [**get_contact_fields**](ContactFieldApi.md#get_contact_fields) | **GET** /ContactCustomField | Retrieve contact fields |
| [**get_contact_fields_by_id**](ContactFieldApi.md#get_contact_fields_by_id) | **GET** /ContactCustomField/{contactCustomFieldId} | Retrieve contact fields |
| [**get_placeholder**](ContactFieldApi.md#get_placeholder) | **GET** /Textparser/fetchDictionaryEntriesByType | Retrieve Placeholders |
| [**get_reference_count**](ContactFieldApi.md#get_reference_count) | **GET** /ContactCustomFieldSetting/{contactCustomFieldSettingId}/getReferenceCount | Receive count reference |
| [**update_contact_field_setting**](ContactFieldApi.md#update_contact_field_setting) | **PUT** /ContactCustomFieldSetting/{contactCustomFieldSettingId} | Update contact field setting |
| [**update_contactfield**](ContactFieldApi.md#update_contactfield) | **PUT** /ContactCustomField/{contactCustomFieldId} | Update a contact field |


## create_contact_field

> <ModelContactCustomFieldResponse> create_contact_field(opts)

Create contact field

Create contact field

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

api_instance = OpenapiClient::ContactFieldApi.new
opts = {
  model_contact_custom_field: OpenapiClient::ModelContactCustomField.new({contact: OpenapiClient::ModelContactCustomFieldContact.new({id: 37, object_name: 'Contact'}), contact_custom_field_setting: OpenapiClient::ModelContactCustomFieldContactCustomFieldSetting.new({id: 37, object_name: 'ContactCustomFieldSetting'}), value: 'value_example', object_name: 'ContactCustomField'}) # ModelContactCustomField | 
}

begin
  # Create contact field
  result = api_instance.create_contact_field(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->create_contact_field: #{e}"
end
```

#### Using the create_contact_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactCustomFieldResponse>, Integer, Hash)> create_contact_field_with_http_info(opts)

```ruby
begin
  # Create contact field
  data, status_code, headers = api_instance.create_contact_field_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactCustomFieldResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->create_contact_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_contact_custom_field** | [**ModelContactCustomField**](ModelContactCustomField.md) |  | [optional] |

### Return type

[**ModelContactCustomFieldResponse**](ModelContactCustomFieldResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_contact_field_setting

> <GetContactFieldSettings200Response> create_contact_field_setting(opts)

Create contact field setting

Create contact field setting

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

api_instance = OpenapiClient::ContactFieldApi.new
opts = {
  model_contact_custom_field_setting: OpenapiClient::ModelContactCustomFieldSetting.new({name: 'name_example'}) # ModelContactCustomFieldSetting | 
}

begin
  # Create contact field setting
  result = api_instance.create_contact_field_setting(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->create_contact_field_setting: #{e}"
end
```

#### Using the create_contact_field_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactFieldSettings200Response>, Integer, Hash)> create_contact_field_setting_with_http_info(opts)

```ruby
begin
  # Create contact field setting
  data, status_code, headers = api_instance.create_contact_field_setting_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactFieldSettings200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->create_contact_field_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_contact_custom_field_setting** | [**ModelContactCustomFieldSetting**](ModelContactCustomFieldSetting.md) |  | [optional] |

### Return type

[**GetContactFieldSettings200Response**](GetContactFieldSettings200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact_custom_field_id

> <DeleteCheckAccount200Response> delete_contact_custom_field_id(contact_custom_field_id)

delete a contact field

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_id = 56 # Integer | Id of contact field

begin
  # delete a contact field
  result = api_instance.delete_contact_custom_field_id(contact_custom_field_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->delete_contact_custom_field_id: #{e}"
end
```

#### Using the delete_contact_custom_field_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_contact_custom_field_id_with_http_info(contact_custom_field_id)

```ruby
begin
  # delete a contact field
  data, status_code, headers = api_instance.delete_contact_custom_field_id_with_http_info(contact_custom_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->delete_contact_custom_field_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_id** | **Integer** | Id of contact field |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_contact_field_setting

> <DeleteCheckAccount200Response> delete_contact_field_setting(contact_custom_field_setting_id)

Deletes a contact field setting

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_setting_id = 56 # Integer | Id of contact field to delete

begin
  # Deletes a contact field setting
  result = api_instance.delete_contact_field_setting(contact_custom_field_setting_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->delete_contact_field_setting: #{e}"
end
```

#### Using the delete_contact_field_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_contact_field_setting_with_http_info(contact_custom_field_setting_id)

```ruby
begin
  # Deletes a contact field setting
  data, status_code, headers = api_instance.delete_contact_field_setting_with_http_info(contact_custom_field_setting_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->delete_contact_field_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_setting_id** | **Integer** | Id of contact field to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_field_setting_by_id

> <GetContactFieldSettings200Response> get_contact_field_setting_by_id(contact_custom_field_setting_id)

Find contact field setting by ID

Returns a single contact field setting

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_setting_id = 56 # Integer | ID of contact field to return

begin
  # Find contact field setting by ID
  result = api_instance.get_contact_field_setting_by_id(contact_custom_field_setting_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_field_setting_by_id: #{e}"
end
```

#### Using the get_contact_field_setting_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactFieldSettings200Response>, Integer, Hash)> get_contact_field_setting_by_id_with_http_info(contact_custom_field_setting_id)

```ruby
begin
  # Find contact field setting by ID
  data, status_code, headers = api_instance.get_contact_field_setting_by_id_with_http_info(contact_custom_field_setting_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactFieldSettings200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_field_setting_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_setting_id** | **Integer** | ID of contact field to return |  |

### Return type

[**GetContactFieldSettings200Response**](GetContactFieldSettings200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_field_settings

> <GetContactFieldSettings200Response> get_contact_field_settings

Retrieve contact field settings

Retrieve all contact field settings

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

api_instance = OpenapiClient::ContactFieldApi.new

begin
  # Retrieve contact field settings
  result = api_instance.get_contact_field_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_field_settings: #{e}"
end
```

#### Using the get_contact_field_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactFieldSettings200Response>, Integer, Hash)> get_contact_field_settings_with_http_info

```ruby
begin
  # Retrieve contact field settings
  data, status_code, headers = api_instance.get_contact_field_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactFieldSettings200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_field_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetContactFieldSettings200Response**](GetContactFieldSettings200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_fields

> <GetContactFields200Response> get_contact_fields

Retrieve contact fields

Retrieve all contact fields

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

api_instance = OpenapiClient::ContactFieldApi.new

begin
  # Retrieve contact fields
  result = api_instance.get_contact_fields
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_fields: #{e}"
end
```

#### Using the get_contact_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactFields200Response>, Integer, Hash)> get_contact_fields_with_http_info

```ruby
begin
  # Retrieve contact fields
  data, status_code, headers = api_instance.get_contact_fields_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactFields200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_fields_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetContactFields200Response**](GetContactFields200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_fields_by_id

> <GetContactFields200Response> get_contact_fields_by_id(contact_custom_field_id)

Retrieve contact fields

Retrieve all contact fields

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_id = 8.14 # Float | id of the contact field

begin
  # Retrieve contact fields
  result = api_instance.get_contact_fields_by_id(contact_custom_field_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_fields_by_id: #{e}"
end
```

#### Using the get_contact_fields_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactFields200Response>, Integer, Hash)> get_contact_fields_by_id_with_http_info(contact_custom_field_id)

```ruby
begin
  # Retrieve contact fields
  data, status_code, headers = api_instance.get_contact_fields_by_id_with_http_info(contact_custom_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactFields200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_contact_fields_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_id** | **Float** | id of the contact field |  |

### Return type

[**GetContactFields200Response**](GetContactFields200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_placeholder

> <GetPlaceholder200Response> get_placeholder(object_name, opts)

Retrieve Placeholders

Retrieve all Placeholders

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

api_instance = OpenapiClient::ContactFieldApi.new
object_name = 'Invoice' # String | Model name
opts = {
  sub_object_name: 'Invoice' # String | Sub model name, required if you have \"Email\" at objectName
}

begin
  # Retrieve Placeholders
  result = api_instance.get_placeholder(object_name, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_placeholder: #{e}"
end
```

#### Using the get_placeholder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlaceholder200Response>, Integer, Hash)> get_placeholder_with_http_info(object_name, opts)

```ruby
begin
  # Retrieve Placeholders
  data, status_code, headers = api_instance.get_placeholder_with_http_info(object_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlaceholder200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_placeholder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_name** | **String** | Model name |  |
| **sub_object_name** | **String** | Sub model name, required if you have \&quot;Email\&quot; at objectName | [optional] |

### Return type

[**GetPlaceholder200Response**](GetPlaceholder200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reference_count

> <GetReferenceCount200Response> get_reference_count(contact_custom_field_setting_id)

Receive count reference

Receive count reference

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_setting_id = 56 # Integer | ID of contact field you want to get the reference count

begin
  # Receive count reference
  result = api_instance.get_reference_count(contact_custom_field_setting_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_reference_count: #{e}"
end
```

#### Using the get_reference_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetReferenceCount200Response>, Integer, Hash)> get_reference_count_with_http_info(contact_custom_field_setting_id)

```ruby
begin
  # Receive count reference
  data, status_code, headers = api_instance.get_reference_count_with_http_info(contact_custom_field_setting_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetReferenceCount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->get_reference_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_setting_id** | **Integer** | ID of contact field you want to get the reference count |  |

### Return type

[**GetReferenceCount200Response**](GetReferenceCount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact_field_setting

> <ModelContactCustomFieldSettingResponse> update_contact_field_setting(contact_custom_field_setting_id, opts)

Update contact field setting

Update an existing contact field  setting

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_setting_id = 56 # Integer | ID of contact field setting you want to update
opts = {
  model_contact_custom_field_setting_update: OpenapiClient::ModelContactCustomFieldSettingUpdate.new # ModelContactCustomFieldSettingUpdate | 
}

begin
  # Update contact field setting
  result = api_instance.update_contact_field_setting(contact_custom_field_setting_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->update_contact_field_setting: #{e}"
end
```

#### Using the update_contact_field_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactCustomFieldSettingResponse>, Integer, Hash)> update_contact_field_setting_with_http_info(contact_custom_field_setting_id, opts)

```ruby
begin
  # Update contact field setting
  data, status_code, headers = api_instance.update_contact_field_setting_with_http_info(contact_custom_field_setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactCustomFieldSettingResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->update_contact_field_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_setting_id** | **Integer** | ID of contact field setting you want to update |  |
| **model_contact_custom_field_setting_update** | [**ModelContactCustomFieldSettingUpdate**](ModelContactCustomFieldSettingUpdate.md) |  | [optional] |

### Return type

[**ModelContactCustomFieldSettingResponse**](ModelContactCustomFieldSettingResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_contactfield

> <ModelContactCustomFieldResponse> update_contactfield(contact_custom_field_id, opts)

Update a contact field

Update a contact field

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

api_instance = OpenapiClient::ContactFieldApi.new
contact_custom_field_id = 8.14 # Float | id of the contact field
opts = {
  model_contact_custom_field_update: OpenapiClient::ModelContactCustomFieldUpdate.new # ModelContactCustomFieldUpdate | Update data
}

begin
  # Update a contact field
  result = api_instance.update_contactfield(contact_custom_field_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->update_contactfield: #{e}"
end
```

#### Using the update_contactfield_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactCustomFieldResponse>, Integer, Hash)> update_contactfield_with_http_info(contact_custom_field_id, opts)

```ruby
begin
  # Update a contact field
  data, status_code, headers = api_instance.update_contactfield_with_http_info(contact_custom_field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactCustomFieldResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactFieldApi->update_contactfield_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_custom_field_id** | **Float** | id of the contact field |  |
| **model_contact_custom_field_update** | [**ModelContactCustomFieldUpdate**](ModelContactCustomFieldUpdate.md) | Update data | [optional] |

### Return type

[**ModelContactCustomFieldResponse**](ModelContactCustomFieldResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

