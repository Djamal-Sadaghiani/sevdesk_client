# OpenapiClient::ContactApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**contact_customer_number_availability_check**](ContactApi.md#contact_customer_number_availability_check) | **GET** /Contact/Mapper/checkCustomerNumberAvailability | Check if a customer number is available |
| [**create_contact**](ContactApi.md#create_contact) | **POST** /Contact | Create a new contact |
| [**delete_contact**](ContactApi.md#delete_contact) | **DELETE** /Contact/{contactId} | Deletes a contact |
| [**find_contacts_by_custom_field_value**](ContactApi.md#find_contacts_by_custom_field_value) | **GET** /Contact/Factory/findContactsByCustomFieldValue | Find contacts by custom field value |
| [**get_contact_by_id**](ContactApi.md#get_contact_by_id) | **GET** /Contact/{contactId} | Find contact by ID |
| [**get_contact_tabs_item_count_by_id**](ContactApi.md#get_contact_tabs_item_count_by_id) | **GET** /Contact/{contactId}/getTabsItemCount | Get number of all items |
| [**get_contacts**](ContactApi.md#get_contacts) | **GET** /Contact | Retrieve contacts |
| [**get_next_customer_number**](ContactApi.md#get_next_customer_number) | **GET** /Contact/Factory/getNextCustomerNumber | Get next free customer number |
| [**update_contact**](ContactApi.md#update_contact) | **PUT** /Contact/{contactId} | Update a existing contact |


## contact_customer_number_availability_check

> <ContactCustomerNumberAvailabilityCheck200Response> contact_customer_number_availability_check(opts)

Check if a customer number is available

Checks if a given customer number is available or already used.

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

api_instance = OpenapiClient::ContactApi.new
opts = {
  customer_number: 'customer_number_example' # String | The customer number to be checked.
}

begin
  # Check if a customer number is available
  result = api_instance.contact_customer_number_availability_check(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->contact_customer_number_availability_check: #{e}"
end
```

#### Using the contact_customer_number_availability_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCustomerNumberAvailabilityCheck200Response>, Integer, Hash)> contact_customer_number_availability_check_with_http_info(opts)

```ruby
begin
  # Check if a customer number is available
  data, status_code, headers = api_instance.contact_customer_number_availability_check_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCustomerNumberAvailabilityCheck200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->contact_customer_number_availability_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_number** | **String** | The customer number to be checked. | [optional] |

### Return type

[**ContactCustomerNumberAvailabilityCheck200Response**](ContactCustomerNumberAvailabilityCheck200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_contact

> <ModelContactResponse> create_contact(opts)

Create a new contact

Creates a new contact.<br>       For adding addresses and communication ways, you will need to use the ContactAddress and CommunicationWay endpoints.

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

api_instance = OpenapiClient::ContactApi.new
opts = {
  model_contact: OpenapiClient::ModelContact.new({category: OpenapiClient::ModelContactCategory.new({id: 3, object_name: 'Category'})}) # ModelContact | Creation data
}

begin
  # Create a new contact
  result = api_instance.create_contact(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactResponse>, Integer, Hash)> create_contact_with_http_info(opts)

```ruby
begin
  # Create a new contact
  data, status_code, headers = api_instance.create_contact_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_contact** | [**ModelContact**](ModelContact.md) | Creation data | [optional] |

### Return type

[**ModelContactResponse**](ModelContactResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact

> <DeleteCheckAccount200Response> delete_contact(contact_id)

Deletes a contact

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

api_instance = OpenapiClient::ContactApi.new
contact_id = 56 # Integer | Id of contact resource to delete

begin
  # Deletes a contact
  result = api_instance.delete_contact(contact_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->delete_contact: #{e}"
end
```

#### Using the delete_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_contact_with_http_info(contact_id)

```ruby
begin
  # Deletes a contact
  data, status_code, headers = api_instance.delete_contact_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->delete_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** | Id of contact resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_contacts_by_custom_field_value

> <FindContactsByCustomFieldValue200Response> find_contacts_by_custom_field_value(value, custom_field_name, opts)

Find contacts by custom field value

Returns an array of contacts having a certain custom field value set.

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

api_instance = OpenapiClient::ContactApi.new
value = 'value_example' # String | The value to be checked.
custom_field_name = 'custom_field_name_example' # String | The ContactCustomFieldSetting name, if no ContactCustomFieldSetting is provided.
opts = {
  custom_field_setting_id: 'custom_field_setting_id_example', # String | ID of ContactCustomFieldSetting for which the value has to be checked.
  custom_field_setting_object_name: 'ContactCustomFieldSetting' # String | Object name. Only needed if you also defined the ID of a ContactCustomFieldSetting.
}

begin
  # Find contacts by custom field value
  result = api_instance.find_contacts_by_custom_field_value(value, custom_field_name, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->find_contacts_by_custom_field_value: #{e}"
end
```

#### Using the find_contacts_by_custom_field_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindContactsByCustomFieldValue200Response>, Integer, Hash)> find_contacts_by_custom_field_value_with_http_info(value, custom_field_name, opts)

```ruby
begin
  # Find contacts by custom field value
  data, status_code, headers = api_instance.find_contacts_by_custom_field_value_with_http_info(value, custom_field_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindContactsByCustomFieldValue200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->find_contacts_by_custom_field_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The value to be checked. |  |
| **custom_field_name** | **String** | The ContactCustomFieldSetting name, if no ContactCustomFieldSetting is provided. |  |
| **custom_field_setting_id** | **String** | ID of ContactCustomFieldSetting for which the value has to be checked. | [optional] |
| **custom_field_setting_object_name** | **String** | Object name. Only needed if you also defined the ID of a ContactCustomFieldSetting. | [optional] |

### Return type

[**FindContactsByCustomFieldValue200Response**](FindContactsByCustomFieldValue200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_by_id

> <FindContactsByCustomFieldValue200Response> get_contact_by_id(contact_id)

Find contact by ID

Returns a single contact

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

api_instance = OpenapiClient::ContactApi.new
contact_id = 56 # Integer | ID of contact to return

begin
  # Find contact by ID
  result = api_instance.get_contact_by_id(contact_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_contact_by_id: #{e}"
end
```

#### Using the get_contact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindContactsByCustomFieldValue200Response>, Integer, Hash)> get_contact_by_id_with_http_info(contact_id)

```ruby
begin
  # Find contact by ID
  data, status_code, headers = api_instance.get_contact_by_id_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindContactsByCustomFieldValue200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_contact_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** | ID of contact to return |  |

### Return type

[**FindContactsByCustomFieldValue200Response**](FindContactsByCustomFieldValue200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_tabs_item_count_by_id

> <GetContactTabsItemCountById200Response> get_contact_tabs_item_count_by_id(contact_id)

Get number of all items

Get number of all invoices, orders, etc. of a specified contact

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

api_instance = OpenapiClient::ContactApi.new
contact_id = 56 # Integer | ID of contact to return

begin
  # Get number of all items
  result = api_instance.get_contact_tabs_item_count_by_id(contact_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_contact_tabs_item_count_by_id: #{e}"
end
```

#### Using the get_contact_tabs_item_count_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactTabsItemCountById200Response>, Integer, Hash)> get_contact_tabs_item_count_by_id_with_http_info(contact_id)

```ruby
begin
  # Get number of all items
  data, status_code, headers = api_instance.get_contact_tabs_item_count_by_id_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactTabsItemCountById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_contact_tabs_item_count_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** | ID of contact to return |  |

### Return type

[**GetContactTabsItemCountById200Response**](GetContactTabsItemCountById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contacts

> <FindContactsByCustomFieldValue200Response> get_contacts(opts)

Retrieve contacts

There are a multitude of parameter which can be used to filter.<br>       A few of them are attached but       for a complete list please check out <a href='#tag/Contact/How-to-filter-for-certain-contacts'>this</a> list

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

api_instance = OpenapiClient::ContactApi.new
opts = {
  depth: '0', # String | Defines if both organizations <b>and</b> persons should be returned.<br>       '0' -> only organizations, '1' -> organizations and persons
  customer_number: 'customer_number_example' # String | Retrieve all contacts with this customer number
}

begin
  # Retrieve contacts
  result = api_instance.get_contacts(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_contacts: #{e}"
end
```

#### Using the get_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FindContactsByCustomFieldValue200Response>, Integer, Hash)> get_contacts_with_http_info(opts)

```ruby
begin
  # Retrieve contacts
  data, status_code, headers = api_instance.get_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FindContactsByCustomFieldValue200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **depth** | **String** | Defines if both organizations &lt;b&gt;and&lt;/b&gt; persons should be returned.&lt;br&gt;       &#39;0&#39; -&gt; only organizations, &#39;1&#39; -&gt; organizations and persons | [optional] |
| **customer_number** | **String** | Retrieve all contacts with this customer number | [optional] |

### Return type

[**FindContactsByCustomFieldValue200Response**](FindContactsByCustomFieldValue200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_next_customer_number

> <GetNextCustomerNumber200Response> get_next_customer_number

Get next free customer number

Retrieves the next available customer number. Avoids duplicates.

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

api_instance = OpenapiClient::ContactApi.new

begin
  # Get next free customer number
  result = api_instance.get_next_customer_number
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_next_customer_number: #{e}"
end
```

#### Using the get_next_customer_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNextCustomerNumber200Response>, Integer, Hash)> get_next_customer_number_with_http_info

```ruby
begin
  # Get next free customer number
  data, status_code, headers = api_instance.get_next_customer_number_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNextCustomerNumber200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->get_next_customer_number_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNextCustomerNumber200Response**](GetNextCustomerNumber200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact

> <ModelContactResponse> update_contact(contact_id, opts)

Update a existing contact

Update a contact

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

api_instance = OpenapiClient::ContactApi.new
contact_id = 56 # Integer | ID of contact to update
opts = {
  model_contact_update: OpenapiClient::ModelContactUpdate.new # ModelContactUpdate | Update data
}

begin
  # Update a existing contact
  result = api_instance.update_contact(contact_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->update_contact: #{e}"
end
```

#### Using the update_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelContactResponse>, Integer, Hash)> update_contact_with_http_info(contact_id, opts)

```ruby
begin
  # Update a existing contact
  data, status_code, headers = api_instance.update_contact_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelContactResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ContactApi->update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **Integer** | ID of contact to update |  |
| **model_contact_update** | [**ModelContactUpdate**](ModelContactUpdate.md) | Update data | [optional] |

### Return type

[**ModelContactResponse**](ModelContactResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

