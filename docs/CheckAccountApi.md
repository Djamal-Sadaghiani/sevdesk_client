# OpenapiClient::CheckAccountApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_clearing_account**](CheckAccountApi.md#create_clearing_account) | **POST** /CheckAccount/Factory/clearingAccount | Create a new clearing account |
| [**create_file_import_account**](CheckAccountApi.md#create_file_import_account) | **POST** /CheckAccount/Factory/fileImportAccount | Create a new file import account |
| [**delete_check_account**](CheckAccountApi.md#delete_check_account) | **DELETE** /CheckAccount/{checkAccountId} | Deletes a check account |
| [**get_balance_at_date**](CheckAccountApi.md#get_balance_at_date) | **GET** /CheckAccount/{checkAccountId}/getBalanceAtDate | Get the balance at a given date |
| [**get_check_account_by_id**](CheckAccountApi.md#get_check_account_by_id) | **GET** /CheckAccount/{checkAccountId} | Find check account by ID |
| [**get_check_accounts**](CheckAccountApi.md#get_check_accounts) | **GET** /CheckAccount | Retrieve check accounts |
| [**update_check_account**](CheckAccountApi.md#update_check_account) | **PUT** /CheckAccount/{checkAccountId} | Update an existing check account |


## create_clearing_account

> <CreateClearingAccount201Response> create_clearing_account(opts)

Create a new clearing account

Creates a new clearing account.

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

api_instance = OpenapiClient::CheckAccountApi.new
opts = {
  create_clearing_account: OpenapiClient::CreateClearingAccount.new # CreateClearingAccount | Data to create a clearning account
}

begin
  # Create a new clearing account
  result = api_instance.create_clearing_account(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->create_clearing_account: #{e}"
end
```

#### Using the create_clearing_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateClearingAccount201Response>, Integer, Hash)> create_clearing_account_with_http_info(opts)

```ruby
begin
  # Create a new clearing account
  data, status_code, headers = api_instance.create_clearing_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateClearingAccount201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->create_clearing_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_clearing_account** | [**CreateClearingAccount**](CreateClearingAccount.md) | Data to create a clearning account | [optional] |

### Return type

[**CreateClearingAccount201Response**](CreateClearingAccount201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_import_account

> <CreateFileImportAccount201Response> create_file_import_account(opts)

Create a new file import account

Creates a new banking account for file imports (CSV, MT940).

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

api_instance = OpenapiClient::CheckAccountApi.new
opts = {
  create_file_import_account: OpenapiClient::CreateFileImportAccount.new # CreateFileImportAccount | Data to create a file import account
}

begin
  # Create a new file import account
  result = api_instance.create_file_import_account(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->create_file_import_account: #{e}"
end
```

#### Using the create_file_import_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFileImportAccount201Response>, Integer, Hash)> create_file_import_account_with_http_info(opts)

```ruby
begin
  # Create a new file import account
  data, status_code, headers = api_instance.create_file_import_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFileImportAccount201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->create_file_import_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_file_import_account** | [**CreateFileImportAccount**](CreateFileImportAccount.md) | Data to create a file import account | [optional] |

### Return type

[**CreateFileImportAccount201Response**](CreateFileImportAccount201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_check_account

> <DeleteCheckAccount200Response> delete_check_account(check_account_id)

Deletes a check account

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

api_instance = OpenapiClient::CheckAccountApi.new
check_account_id = 56 # Integer | Id of check account to delete

begin
  # Deletes a check account
  result = api_instance.delete_check_account(check_account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->delete_check_account: #{e}"
end
```

#### Using the delete_check_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_check_account_with_http_info(check_account_id)

```ruby
begin
  # Deletes a check account
  data, status_code, headers = api_instance.delete_check_account_with_http_info(check_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->delete_check_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_id** | **Integer** | Id of check account to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_balance_at_date

> <GetBalanceAtDate200Response> get_balance_at_date(check_account_id, date)

Get the balance at a given date

Get the balance, calculated as the sum of all transactions sevdesk knows, up to and including the given date. Note that this balance does not have to be the actual bank account balance, e.g. if sevdesk did not import old transactions.

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

api_instance = OpenapiClient::CheckAccountApi.new
check_account_id = 56 # Integer | ID of check account
date = Date.parse('2013-10-20') # Date | Only consider transactions up to this date at 23:59:59

begin
  # Get the balance at a given date
  result = api_instance.get_balance_at_date(check_account_id, date)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->get_balance_at_date: #{e}"
end
```

#### Using the get_balance_at_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBalanceAtDate200Response>, Integer, Hash)> get_balance_at_date_with_http_info(check_account_id, date)

```ruby
begin
  # Get the balance at a given date
  data, status_code, headers = api_instance.get_balance_at_date_with_http_info(check_account_id, date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBalanceAtDate200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->get_balance_at_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_id** | **Integer** | ID of check account |  |
| **date** | **Date** | Only consider transactions up to this date at 23:59:59 |  |

### Return type

[**GetBalanceAtDate200Response**](GetBalanceAtDate200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_check_account_by_id

> <GetCheckAccounts200Response> get_check_account_by_id(check_account_id)

Find check account by ID

Retrieve an existing check account

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

api_instance = OpenapiClient::CheckAccountApi.new
check_account_id = 56 # Integer | ID of check account

begin
  # Find check account by ID
  result = api_instance.get_check_account_by_id(check_account_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->get_check_account_by_id: #{e}"
end
```

#### Using the get_check_account_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCheckAccounts200Response>, Integer, Hash)> get_check_account_by_id_with_http_info(check_account_id)

```ruby
begin
  # Find check account by ID
  data, status_code, headers = api_instance.get_check_account_by_id_with_http_info(check_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCheckAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->get_check_account_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_id** | **Integer** | ID of check account |  |

### Return type

[**GetCheckAccounts200Response**](GetCheckAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_check_accounts

> <GetCheckAccounts200Response> get_check_accounts

Retrieve check accounts

Retrieve all check accounts

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

api_instance = OpenapiClient::CheckAccountApi.new

begin
  # Retrieve check accounts
  result = api_instance.get_check_accounts
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->get_check_accounts: #{e}"
end
```

#### Using the get_check_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCheckAccounts200Response>, Integer, Hash)> get_check_accounts_with_http_info

```ruby
begin
  # Retrieve check accounts
  data, status_code, headers = api_instance.get_check_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCheckAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->get_check_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCheckAccounts200Response**](GetCheckAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_check_account

> <ModelCheckAccountResponse> update_check_account(check_account_id, opts)

Update an existing check account

Update a check account

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

api_instance = OpenapiClient::CheckAccountApi.new
check_account_id = 56 # Integer | ID of check account to update
opts = {
  model_check_account_update: OpenapiClient::ModelCheckAccountUpdate.new # ModelCheckAccountUpdate | Update data
}

begin
  # Update an existing check account
  result = api_instance.update_check_account(check_account_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->update_check_account: #{e}"
end
```

#### Using the update_check_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCheckAccountResponse>, Integer, Hash)> update_check_account_with_http_info(check_account_id, opts)

```ruby
begin
  # Update an existing check account
  data, status_code, headers = api_instance.update_check_account_with_http_info(check_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCheckAccountResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountApi->update_check_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_id** | **Integer** | ID of check account to update |  |
| **model_check_account_update** | [**ModelCheckAccountUpdate**](ModelCheckAccountUpdate.md) | Update data | [optional] |

### Return type

[**ModelCheckAccountResponse**](ModelCheckAccountResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

