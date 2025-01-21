# OpenapiClient::VoucherApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**book_voucher**](VoucherApi.md#book_voucher) | **PUT** /Voucher/{voucherId}/bookAmount | Book a voucher |
| [**for_account_number**](VoucherApi.md#for_account_number) | **GET** /ReceiptGuidance/forAccountNumber | Get guidance by account number |
| [**for_all_accounts**](VoucherApi.md#for_all_accounts) | **GET** /ReceiptGuidance/forAllAccounts | Get all account guides |
| [**for_expense**](VoucherApi.md#for_expense) | **GET** /ReceiptGuidance/forExpense | Get guidance for expense accounts |
| [**for_revenue**](VoucherApi.md#for_revenue) | **GET** /ReceiptGuidance/forRevenue | Get guidance for revenue accounts |
| [**for_tax_rule**](VoucherApi.md#for_tax_rule) | **GET** /ReceiptGuidance/forTaxRule | Get guidance by Tax Rule |
| [**get_voucher_by_id**](VoucherApi.md#get_voucher_by_id) | **GET** /Voucher/{voucherId} | Find voucher by ID |
| [**get_vouchers**](VoucherApi.md#get_vouchers) | **GET** /Voucher | Retrieve vouchers |
| [**update_voucher**](VoucherApi.md#update_voucher) | **PUT** /Voucher/{voucherId} | Update an existing voucher |
| [**voucher_enshrine**](VoucherApi.md#voucher_enshrine) | **PUT** /Voucher/{voucherId}/enshrine | Enshrine |
| [**voucher_factory_save_voucher**](VoucherApi.md#voucher_factory_save_voucher) | **POST** /Voucher/Factory/saveVoucher | Create a new voucher |
| [**voucher_reset_to_draft**](VoucherApi.md#voucher_reset_to_draft) | **PUT** /Voucher/{voucherId}/resetToDraft | Reset status to draft |
| [**voucher_reset_to_open**](VoucherApi.md#voucher_reset_to_open) | **PUT** /Voucher/{voucherId}/resetToOpen | Reset status to open |
| [**voucher_upload_file**](VoucherApi.md#voucher_upload_file) | **POST** /Voucher/Factory/uploadTempFile | Upload voucher file |


## book_voucher

> <BookVoucher200Response> book_voucher(voucher_id, opts)

Book a voucher

Booking the voucher with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking a voucher, all by using the same endpoint.<br> Conveniently, the booking process is exactly the same as the process for invoices.<br> For this reason, you can have a look at it <a href='#tag/Voucher/How-to-filter-for-certain-vouchers'>here</a> and all you need to to is to change \"Invoice\" into \"Voucher\" in the URL.

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

api_instance = OpenapiClient::VoucherApi.new
voucher_id = 56 # Integer | ID of voucher to book
opts = {
  book_voucher_request: OpenapiClient::BookVoucherRequest.new({amount: 3.56, date: Time.now, type: 'FULL_PAYMENT', check_account: OpenapiClient::BookCreditNoteRequestCheckAccount.new({id: 37, object_name: 'CheckAccount'})}) # BookVoucherRequest | Booking data
}

begin
  # Book a voucher
  result = api_instance.book_voucher(voucher_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->book_voucher: #{e}"
end
```

#### Using the book_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookVoucher200Response>, Integer, Hash)> book_voucher_with_http_info(voucher_id, opts)

```ruby
begin
  # Book a voucher
  data, status_code, headers = api_instance.book_voucher_with_http_info(voucher_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookVoucher200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->book_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | ID of voucher to book |  |
| **book_voucher_request** | [**BookVoucherRequest**](BookVoucherRequest.md) | Booking data | [optional] |

### Return type

[**BookVoucher200Response**](BookVoucher200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## for_account_number

> <ForAllAccounts200Response> for_account_number(account_number)

Get guidance by account number

You can use this endpoint to get additional information about the account that you may want to use.

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

api_instance = OpenapiClient::VoucherApi.new
account_number = 56 # Integer | The datev account number you want to get additional information of

begin
  # Get guidance by account number
  result = api_instance.for_account_number(account_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_account_number: #{e}"
end
```

#### Using the for_account_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForAllAccounts200Response>, Integer, Hash)> for_account_number_with_http_info(account_number)

```ruby
begin
  # Get guidance by account number
  data, status_code, headers = api_instance.for_account_number_with_http_info(account_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForAllAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_account_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **Integer** | The datev account number you want to get additional information of |  |

### Return type

[**ForAllAccounts200Response**](ForAllAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## for_all_accounts

> <ForAllAccounts200Response> for_all_accounts

Get all account guides

You can use this endpoint to help you decide which accounts you can use when creating a voucher

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

api_instance = OpenapiClient::VoucherApi.new

begin
  # Get all account guides
  result = api_instance.for_all_accounts
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_all_accounts: #{e}"
end
```

#### Using the for_all_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForAllAccounts200Response>, Integer, Hash)> for_all_accounts_with_http_info

```ruby
begin
  # Get all account guides
  data, status_code, headers = api_instance.for_all_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForAllAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_all_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ForAllAccounts200Response**](ForAllAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## for_expense

> <ForAllAccounts200Response> for_expense

Get guidance for expense accounts

Provides all possible combinations for expense accounts to be used with expense receipts/vouchers.

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

api_instance = OpenapiClient::VoucherApi.new

begin
  # Get guidance for expense accounts
  result = api_instance.for_expense
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_expense: #{e}"
end
```

#### Using the for_expense_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForAllAccounts200Response>, Integer, Hash)> for_expense_with_http_info

```ruby
begin
  # Get guidance for expense accounts
  data, status_code, headers = api_instance.for_expense_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForAllAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_expense_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ForAllAccounts200Response**](ForAllAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## for_revenue

> <ForAllAccounts200Response> for_revenue

Get guidance for revenue accounts

Provides all possible combinations for revenue accounts to be used with revenue receipts/vouchers.

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

api_instance = OpenapiClient::VoucherApi.new

begin
  # Get guidance for revenue accounts
  result = api_instance.for_revenue
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_revenue: #{e}"
end
```

#### Using the for_revenue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForAllAccounts200Response>, Integer, Hash)> for_revenue_with_http_info

```ruby
begin
  # Get guidance for revenue accounts
  data, status_code, headers = api_instance.for_revenue_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForAllAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_revenue_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ForAllAccounts200Response**](ForAllAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## for_tax_rule

> <ForAllAccounts200Response> for_tax_rule(tax_rule)

Get guidance by Tax Rule

You can use this endpoint to get additional information about the tax rule (for example, USTPFL_UMS_EINN) that you may want to use.

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

api_instance = OpenapiClient::VoucherApi.new
tax_rule = 'USTPFL_UMS_EINN' # String | The code of the tax rule you want to get guidance for.

begin
  # Get guidance by Tax Rule
  result = api_instance.for_tax_rule(tax_rule)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_tax_rule: #{e}"
end
```

#### Using the for_tax_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForAllAccounts200Response>, Integer, Hash)> for_tax_rule_with_http_info(tax_rule)

```ruby
begin
  # Get guidance by Tax Rule
  data, status_code, headers = api_instance.for_tax_rule_with_http_info(tax_rule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForAllAccounts200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->for_tax_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_rule** | **String** | The code of the tax rule you want to get guidance for. |  |

### Return type

[**ForAllAccounts200Response**](ForAllAccounts200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_voucher_by_id

> <GetVouchers200Response> get_voucher_by_id(voucher_id)

Find voucher by ID

Returns a single voucher

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

api_instance = OpenapiClient::VoucherApi.new
voucher_id = 56 # Integer | ID of voucher to return

begin
  # Find voucher by ID
  result = api_instance.get_voucher_by_id(voucher_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->get_voucher_by_id: #{e}"
end
```

#### Using the get_voucher_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVouchers200Response>, Integer, Hash)> get_voucher_by_id_with_http_info(voucher_id)

```ruby
begin
  # Find voucher by ID
  data, status_code, headers = api_instance.get_voucher_by_id_with_http_info(voucher_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVouchers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->get_voucher_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | ID of voucher to return |  |

### Return type

[**GetVouchers200Response**](GetVouchers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vouchers

> <GetVouchers200Response> get_vouchers(opts)

Retrieve vouchers

There are a multitude of parameter which can be used to filter. A few of them are attached but      for a complete list please check out <a href='#tag/Voucher/How-to-filter-for-certain-vouchers'>this</a> list

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

api_instance = OpenapiClient::VoucherApi.new
opts = {
  status: 50, # Float | Status of the vouchers to retrieve.
  credit_debit: 'C', # String | Define if you only want credit or debit vouchers.
  description_like: 'description_like_example', # String | Retrieve all vouchers with a description like this.
  start_date: 01.01.2020, # Integer | Retrieve all vouchers with a date equal or higher
  end_date: 01.01.2020, # Integer | Retrieve all vouchers with a date equal or lower
  contact_id: 56, # Integer | Retrieve all vouchers with this contact. Must be provided with contact[objectName]
  contact_object_name: 'contact_object_name_example' # String | Only required if contact[id] was provided. 'Contact' should be used as value.
}

begin
  # Retrieve vouchers
  result = api_instance.get_vouchers(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->get_vouchers: #{e}"
end
```

#### Using the get_vouchers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVouchers200Response>, Integer, Hash)> get_vouchers_with_http_info(opts)

```ruby
begin
  # Retrieve vouchers
  data, status_code, headers = api_instance.get_vouchers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVouchers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->get_vouchers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Float** | Status of the vouchers to retrieve. | [optional] |
| **credit_debit** | **String** | Define if you only want credit or debit vouchers. | [optional] |
| **description_like** | **String** | Retrieve all vouchers with a description like this. | [optional] |
| **start_date** | **Integer** | Retrieve all vouchers with a date equal or higher | [optional] |
| **end_date** | **Integer** | Retrieve all vouchers with a date equal or lower | [optional] |
| **contact_id** | **Integer** | Retrieve all vouchers with this contact. Must be provided with contact[objectName] | [optional] |
| **contact_object_name** | **String** | Only required if contact[id] was provided. &#39;Contact&#39; should be used as value. | [optional] |

### Return type

[**GetVouchers200Response**](GetVouchers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_voucher

> <ModelVoucherResponse> update_voucher(voucher_id, opts)

Update an existing voucher

Update a draft voucher using this method if you want to change simple values like the description. Complex changes like adding a position should use /Voucher/Factory/saveVoucher.<br> You can not change the status using this endpoint.

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

api_instance = OpenapiClient::VoucherApi.new
voucher_id = 56 # Integer | ID of voucher to update
opts = {
  model_voucher_update: OpenapiClient::ModelVoucherUpdate.new # ModelVoucherUpdate | Update data
}

begin
  # Update an existing voucher
  result = api_instance.update_voucher(voucher_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->update_voucher: #{e}"
end
```

#### Using the update_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelVoucherResponse>, Integer, Hash)> update_voucher_with_http_info(voucher_id, opts)

```ruby
begin
  # Update an existing voucher
  data, status_code, headers = api_instance.update_voucher_with_http_info(voucher_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelVoucherResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->update_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | ID of voucher to update |  |
| **model_voucher_update** | [**ModelVoucherUpdate**](ModelVoucherUpdate.md) | Update data | [optional] |

### Return type

[**ModelVoucherResponse**](ModelVoucherResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## voucher_enshrine

> <CheckAccountTransactionEnshrine200Response> voucher_enshrine(voucher_id)

Enshrine

Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"100\"`) or higher.  Enshrined vouchers cannot be changed. This operation cannot be undone. 

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

api_instance = OpenapiClient::VoucherApi.new
voucher_id = 56 # Integer | ID of the voucher to enshrine

begin
  # Enshrine
  result = api_instance.voucher_enshrine(voucher_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_enshrine: #{e}"
end
```

#### Using the voucher_enshrine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAccountTransactionEnshrine200Response>, Integer, Hash)> voucher_enshrine_with_http_info(voucher_id)

```ruby
begin
  # Enshrine
  data, status_code, headers = api_instance.voucher_enshrine_with_http_info(voucher_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAccountTransactionEnshrine200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_enshrine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | ID of the voucher to enshrine |  |

### Return type

[**CheckAccountTransactionEnshrine200Response**](CheckAccountTransactionEnshrine200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## voucher_factory_save_voucher

> <SaveVoucherResponse> voucher_factory_save_voucher(opts)

Create a new voucher

Bundles the creation or updating of voucher and voucher position.<br> The list of parameters starts with the voucher model.<br> This contains all required attributes for a complete voucher.<br> Most of the attributes are covered in the voucher attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br><br> The list of parameters then continues with the voucher position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more voucher positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \\\"1\\\" instead of \\\"0\\\".<br><br> The list ends with the two parameters voucherPosDelete and filename.<br> We will shortly explain what they can do.<br> With voucherPosDelete you can delete voucher positions as this request can also be used to update draft vouchers.<br> With filename you can attach a file to the voucher.<br> For most of our customers this is a really important step, as they need to digitize their receipts.<br> Finally, after covering all parameters, the only important information left, is that the order of the last two attributes always needs to be kept. <br><br> The only valid status values for this endpoint are 50 (draft) and 100 (open). You can only update draft vouchers. If you have to, you can downgrade the status by calling resetToOpen (from paid) and resetToDraft (from open).

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

api_instance = OpenapiClient::VoucherApi.new
opts = {
  save_voucher: OpenapiClient::SaveVoucher.new({voucher: OpenapiClient::ModelVoucher.new({object_name: 'object_name_example', map_all: true, status: 50, tax_rule: OpenapiClient::ModelVoucherTaxRule.new({id: '1', object_name: 'TaxRule'}), tax_type: 'default', credit_debit: 'C', voucher_type: 'VOU'})}) # SaveVoucher | Creation data. Please be aware, that you need to provide at least all required parameters of the voucher and voucher position model!
}

begin
  # Create a new voucher
  result = api_instance.voucher_factory_save_voucher(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_factory_save_voucher: #{e}"
end
```

#### Using the voucher_factory_save_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SaveVoucherResponse>, Integer, Hash)> voucher_factory_save_voucher_with_http_info(opts)

```ruby
begin
  # Create a new voucher
  data, status_code, headers = api_instance.voucher_factory_save_voucher_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SaveVoucherResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_factory_save_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_voucher** | [**SaveVoucher**](SaveVoucher.md) | Creation data. Please be aware, that you need to provide at least all required parameters of the voucher and voucher position model! | [optional] |

### Return type

[**SaveVoucherResponse**](SaveVoucherResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## voucher_reset_to_draft

> <VoucherResetToOpen200Response> voucher_reset_to_draft(voucher_id)

Reset status to draft

Resets the status \"Draft\" (`\"status\": \"50\"`). Linked payments will be unlinked. Created asset depreciation will be reset.<br> This is not possible if the voucher is already enshrined!  You can only change the status from higher to lower (\"Open\" to \"Draft\").<br> To change to higher status use [/Voucher/Factory/saveVoucher](#tag/Voucher/operation/voucherFactorySaveVoucher). 

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

api_instance = OpenapiClient::VoucherApi.new
voucher_id = 56 # Integer | ID of the voucher to reset

begin
  # Reset status to draft
  result = api_instance.voucher_reset_to_draft(voucher_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_reset_to_draft: #{e}"
end
```

#### Using the voucher_reset_to_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherResetToOpen200Response>, Integer, Hash)> voucher_reset_to_draft_with_http_info(voucher_id)

```ruby
begin
  # Reset status to draft
  data, status_code, headers = api_instance.voucher_reset_to_draft_with_http_info(voucher_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherResetToOpen200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_reset_to_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | ID of the voucher to reset |  |

### Return type

[**VoucherResetToOpen200Response**](VoucherResetToOpen200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## voucher_reset_to_open

> <VoucherResetToOpen200Response> voucher_reset_to_open(voucher_id)

Reset status to open

Resets the status to \"Open\" (`\"status\": \"100\"`). Linked payments will be unlinked. Created asset depreciation will be reset.<br> This is not possible if the voucher is already enshrined!  This endpoint can not be used to increase the status from \"Draft\" to \"Open\".<br> You can only change the status from higher to lower (\"Open\" to \"Draft\").<br> To change to higher status use [Voucher/{voucherId}/bookAmount](#tag/Voucher/operation/bookVoucher). To change to lower status use [Voucher/{voucherId}/resetToDraft](#tag/Voucher/operation/voucherResetToDraft). 

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

api_instance = OpenapiClient::VoucherApi.new
voucher_id = 56 # Integer | ID of the voucher to reset

begin
  # Reset status to open
  result = api_instance.voucher_reset_to_open(voucher_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_reset_to_open: #{e}"
end
```

#### Using the voucher_reset_to_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherResetToOpen200Response>, Integer, Hash)> voucher_reset_to_open_with_http_info(voucher_id)

```ruby
begin
  # Reset status to open
  data, status_code, headers = api_instance.voucher_reset_to_open_with_http_info(voucher_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherResetToOpen200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_reset_to_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_id** | **Integer** | ID of the voucher to reset |  |

### Return type

[**VoucherResetToOpen200Response**](VoucherResetToOpen200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## voucher_upload_file

> <VoucherUploadFile201Response> voucher_upload_file(opts)

Upload voucher file

To attach a document to a voucher, you will need to upload it first for later use.<br> To do this, you can use this request.<br> When you successfully uploaded the file, you will get a sevdesk internal filename in the response.<br> The filename will be a hash generated from your uploaded file. You will need it in the next request!<br> After you got the just mentioned filename, you can enter it as a value for the filename parameter of the saveVoucher request.<br> If you provided all necessary parameters and kept all of them in the right order, the file will be attached to your voucher.

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

api_instance = OpenapiClient::VoucherApi.new
opts = {
  voucher_upload_file_request: OpenapiClient::VoucherUploadFileRequest.new # VoucherUploadFileRequest | File to upload
}

begin
  # Upload voucher file
  result = api_instance.voucher_upload_file(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_upload_file: #{e}"
end
```

#### Using the voucher_upload_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoucherUploadFile201Response>, Integer, Hash)> voucher_upload_file_with_http_info(opts)

```ruby
begin
  # Upload voucher file
  data, status_code, headers = api_instance.voucher_upload_file_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoucherUploadFile201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoucherApi->voucher_upload_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_upload_file_request** | [**VoucherUploadFileRequest**](VoucherUploadFileRequest.md) | File to upload | [optional] |

### Return type

[**VoucherUploadFile201Response**](VoucherUploadFile201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: form-data
- **Accept**: application/json

