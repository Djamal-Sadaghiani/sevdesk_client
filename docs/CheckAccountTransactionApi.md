# OpenapiClient::CheckAccountTransactionApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_account_transaction_enshrine**](CheckAccountTransactionApi.md#check_account_transaction_enshrine) | **PUT** /CheckAccountTransaction/{checkAccountTransactionId}/enshrine | Enshrine |
| [**create_transaction**](CheckAccountTransactionApi.md#create_transaction) | **POST** /CheckAccountTransaction | Create a new transaction |
| [**delete_check_account_transaction**](CheckAccountTransactionApi.md#delete_check_account_transaction) | **DELETE** /CheckAccountTransaction/{checkAccountTransactionId} | Deletes a check account transaction |
| [**get_check_account_transaction_by_id**](CheckAccountTransactionApi.md#get_check_account_transaction_by_id) | **GET** /CheckAccountTransaction/{checkAccountTransactionId} | Find check account transaction by ID |
| [**get_transactions**](CheckAccountTransactionApi.md#get_transactions) | **GET** /CheckAccountTransaction | Retrieve transactions |
| [**update_check_account_transaction**](CheckAccountTransactionApi.md#update_check_account_transaction) | **PUT** /CheckAccountTransaction/{checkAccountTransactionId} | Update an existing check account transaction |


## check_account_transaction_enshrine

> <CheckAccountTransactionEnshrine200Response> check_account_transaction_enshrine(check_account_transaction_id)

Enshrine

Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Linked\" (`\"status\": \"200\"`) or higher.  Linked invoices, credit notes or vouchers cannot be changed when the transaction is enshrined. 

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

api_instance = OpenapiClient::CheckAccountTransactionApi.new
check_account_transaction_id = 56 # Integer | ID of the transaction to enshrine

begin
  # Enshrine
  result = api_instance.check_account_transaction_enshrine(check_account_transaction_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->check_account_transaction_enshrine: #{e}"
end
```

#### Using the check_account_transaction_enshrine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAccountTransactionEnshrine200Response>, Integer, Hash)> check_account_transaction_enshrine_with_http_info(check_account_transaction_id)

```ruby
begin
  # Enshrine
  data, status_code, headers = api_instance.check_account_transaction_enshrine_with_http_info(check_account_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAccountTransactionEnshrine200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->check_account_transaction_enshrine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_transaction_id** | **Integer** | ID of the transaction to enshrine |  |

### Return type

[**CheckAccountTransactionEnshrine200Response**](CheckAccountTransactionEnshrine200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_transaction

> <ModelCheckAccountTransactionResponse> create_transaction(opts)

Create a new transaction

Creates a new transaction on a check account.

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

api_instance = OpenapiClient::CheckAccountTransactionApi.new
opts = {
  model_check_account_transaction: OpenapiClient::ModelCheckAccountTransaction.new({value_date: Time.parse('2024-05-10T00:00+02:00'), amount: 100.1, payee_payer_name: 'Cercei Lannister', check_account: OpenapiClient::ModelCheckAccountTransactionCheckAccount.new({id: 37, object_name: 'object_name_example'}), status: 100}) # ModelCheckAccountTransaction | Creation data. Please be aware, that you need to provide at least all required parameter      of the CheckAccountTransaction model!
}

begin
  # Create a new transaction
  result = api_instance.create_transaction(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->create_transaction: #{e}"
end
```

#### Using the create_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCheckAccountTransactionResponse>, Integer, Hash)> create_transaction_with_http_info(opts)

```ruby
begin
  # Create a new transaction
  data, status_code, headers = api_instance.create_transaction_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCheckAccountTransactionResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->create_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_check_account_transaction** | [**ModelCheckAccountTransaction**](ModelCheckAccountTransaction.md) | Creation data. Please be aware, that you need to provide at least all required parameter      of the CheckAccountTransaction model! | [optional] |

### Return type

[**ModelCheckAccountTransactionResponse**](ModelCheckAccountTransactionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_check_account_transaction

> <DeleteCheckAccount200Response> delete_check_account_transaction(check_account_transaction_id)

Deletes a check account transaction

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

api_instance = OpenapiClient::CheckAccountTransactionApi.new
check_account_transaction_id = 56 # Integer | Id of check account transaction to delete

begin
  # Deletes a check account transaction
  result = api_instance.delete_check_account_transaction(check_account_transaction_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->delete_check_account_transaction: #{e}"
end
```

#### Using the delete_check_account_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> delete_check_account_transaction_with_http_info(check_account_transaction_id)

```ruby
begin
  # Deletes a check account transaction
  data, status_code, headers = api_instance.delete_check_account_transaction_with_http_info(check_account_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->delete_check_account_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_transaction_id** | **Integer** | Id of check account transaction to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_check_account_transaction_by_id

> <GetTransactions200Response> get_check_account_transaction_by_id(check_account_transaction_id)

Find check account transaction by ID

Retrieve an existing check account transaction

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

api_instance = OpenapiClient::CheckAccountTransactionApi.new
check_account_transaction_id = 56 # Integer | ID of check account transaction

begin
  # Find check account transaction by ID
  result = api_instance.get_check_account_transaction_by_id(check_account_transaction_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->get_check_account_transaction_by_id: #{e}"
end
```

#### Using the get_check_account_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactions200Response>, Integer, Hash)> get_check_account_transaction_by_id_with_http_info(check_account_transaction_id)

```ruby
begin
  # Find check account transaction by ID
  data, status_code, headers = api_instance.get_check_account_transaction_by_id_with_http_info(check_account_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->get_check_account_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_transaction_id** | **Integer** | ID of check account transaction |  |

### Return type

[**GetTransactions200Response**](GetTransactions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions

> <GetTransactions200Response> get_transactions(opts)

Retrieve transactions

Retrieve all transactions depending on the filters defined in the query.

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

api_instance = OpenapiClient::CheckAccountTransactionApi.new
opts = {
  check_account_id: 56, # Integer | Retrieve all transactions on this check account. Must be provided with checkAccount[objectName]
  check_account_object_name: 'check_account_object_name_example', # String | Only required if checkAccount[id] was provided. 'CheckAccount' should be used as value.
  is_booked: true, # Boolean | Only retrieve booked transactions
  paymt_purpose: 'paymt_purpose_example', # String | Only retrieve transactions with this payment purpose
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only retrieve transactions from this date on
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only retrieve transactions up to this date
  payee_payer_name: 'payee_payer_name_example', # String | Only retrieve transactions with this payee / payer
  only_credit: true, # Boolean | Only retrieve credit transactions
  only_debit: true # Boolean | Only retrieve debit transactions
}

begin
  # Retrieve transactions
  result = api_instance.get_transactions(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->get_transactions: #{e}"
end
```

#### Using the get_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransactions200Response>, Integer, Hash)> get_transactions_with_http_info(opts)

```ruby
begin
  # Retrieve transactions
  data, status_code, headers = api_instance.get_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransactions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->get_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_id** | **Integer** | Retrieve all transactions on this check account. Must be provided with checkAccount[objectName] | [optional] |
| **check_account_object_name** | **String** | Only required if checkAccount[id] was provided. &#39;CheckAccount&#39; should be used as value. | [optional] |
| **is_booked** | **Boolean** | Only retrieve booked transactions | [optional] |
| **paymt_purpose** | **String** | Only retrieve transactions with this payment purpose | [optional] |
| **start_date** | **Time** | Only retrieve transactions from this date on | [optional] |
| **end_date** | **Time** | Only retrieve transactions up to this date | [optional] |
| **payee_payer_name** | **String** | Only retrieve transactions with this payee / payer | [optional] |
| **only_credit** | **Boolean** | Only retrieve credit transactions | [optional] |
| **only_debit** | **Boolean** | Only retrieve debit transactions | [optional] |

### Return type

[**GetTransactions200Response**](GetTransactions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_check_account_transaction

> <ModelCheckAccountTransactionResponse> update_check_account_transaction(check_account_transaction_id, opts)

Update an existing check account transaction

Update a check account transaction

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

api_instance = OpenapiClient::CheckAccountTransactionApi.new
check_account_transaction_id = 56 # Integer | ID of check account to update transaction
opts = {
  model_check_account_transaction_update: OpenapiClient::ModelCheckAccountTransactionUpdate.new # ModelCheckAccountTransactionUpdate | Update data
}

begin
  # Update an existing check account transaction
  result = api_instance.update_check_account_transaction(check_account_transaction_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->update_check_account_transaction: #{e}"
end
```

#### Using the update_check_account_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCheckAccountTransactionResponse>, Integer, Hash)> update_check_account_transaction_with_http_info(check_account_transaction_id, opts)

```ruby
begin
  # Update an existing check account transaction
  data, status_code, headers = api_instance.update_check_account_transaction_with_http_info(check_account_transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCheckAccountTransactionResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckAccountTransactionApi->update_check_account_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_account_transaction_id** | **Integer** | ID of check account to update transaction |  |
| **model_check_account_transaction_update** | [**ModelCheckAccountTransactionUpdate**](ModelCheckAccountTransactionUpdate.md) | Update data | [optional] |

### Return type

[**ModelCheckAccountTransactionResponse**](ModelCheckAccountTransactionResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

