# OpenapiClient::ExportApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_contact**](ExportApi.md#export_contact) | **GET** /Export/contactListCsv | Export contact |
| [**export_credit_note**](ExportApi.md#export_credit_note) | **GET** /Export/creditNoteCsv | Export creditNote |
| [**export_datev**](ExportApi.md#export_datev) | **GET** /Export/datevCSV | Export datev |
| [**export_invoice**](ExportApi.md#export_invoice) | **GET** /Export/invoiceCsv | Export invoice |
| [**export_invoice_zip**](ExportApi.md#export_invoice_zip) | **GET** /Export/invoiceZip | Export Invoice as zip |
| [**export_transactions**](ExportApi.md#export_transactions) | **GET** /Export/transactionsCsv | Export transaction |
| [**export_voucher**](ExportApi.md#export_voucher) | **GET** /Export/voucherListCsv | Export voucher as zip |
| [**export_voucher_zip**](ExportApi.md#export_voucher_zip) | **GET** /Export/voucherZip | Export voucher zip |
| [**update_export_config**](ExportApi.md#update_export_config) | **PUT** /SevClient/{SevClientId}/updateExportConfig | Update export config |


## export_contact

> <ExportContact200Response> export_contact(sev_query, opts)

Export contact

Contact export as csv

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportContactSevQueryParameter.new({model_name: Contact, object_name: SevQuery}) # ExportContactSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export contact
  result = api_instance.export_contact(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_contact: #{e}"
end
```

#### Using the export_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportContact200Response>, Integer, Hash)> export_contact_with_http_info(sev_query, opts)

```ruby
begin
  # Export contact
  data, status_code, headers = api_instance.export_contact_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportContact200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportContactSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportContact200Response**](ExportContact200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_credit_note

> <ExportCreditNote200Response> export_credit_note(sev_query, opts)

Export creditNote

Export all credit notes as csv

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportCreditNoteSevQueryParameter.new({model_name: CreditNote, object_name: SevQuery}) # ExportCreditNoteSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export creditNote
  result = api_instance.export_credit_note(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_credit_note: #{e}"
end
```

#### Using the export_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportCreditNote200Response>, Integer, Hash)> export_credit_note_with_http_info(sev_query, opts)

```ruby
begin
  # Export creditNote
  data, status_code, headers = api_instance.export_credit_note_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportCreditNote200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportCreditNoteSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportCreditNote200Response**](ExportCreditNote200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_datev

> Object export_datev(start_date, end_date, scope, opts)

Export datev

Datev export as zip with csv´s. Before you can perform the datev export, you must first set the \"accountingYearBegin\". To do this, you must use the <a href='#tag/Export/operation/updateExportConfig'>updateExportConfig</a> endpoint.

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

api_instance = OpenapiClient::ExportApi.new
start_date = 1641032867 # Integer | the start date of the export as timestamp
end_date = 1648805267 # Integer | the end date of the export as timestamp
scope = 'EXTCD' # String | Define what you want to include in the datev export. This parameter takes a string of 5 letters. Each stands for a model that should be included. Possible letters are: ‘E’ (Earnings), ‘X’ (Expenditure), ‘T’ (Transactions), ‘C’ (Cashregister), ‘D’ (Assets). By providing one of those letter you specify that it should be included in the datev export. Some combinations are: ‘EXTCD’, ‘EXTD’ …
opts = {
  download: true, # Boolean | Specifies if the document is downloaded
  with_unpaid_documents: true, # Boolean | include unpaid documents
  with_enshrined_documents: true, # Boolean | include enshrined documents
  enshrine: false # Boolean | Specify if you want to enshrine all models which were included in the export
}

begin
  # Export datev
  result = api_instance.export_datev(start_date, end_date, scope, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_datev: #{e}"
end
```

#### Using the export_datev_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> export_datev_with_http_info(start_date, end_date, scope, opts)

```ruby
begin
  # Export datev
  data, status_code, headers = api_instance.export_datev_with_http_info(start_date, end_date, scope, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_datev_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Integer** | the start date of the export as timestamp |  |
| **end_date** | **Integer** | the end date of the export as timestamp |  |
| **scope** | **String** | Define what you want to include in the datev export. This parameter takes a string of 5 letters. Each stands for a model that should be included. Possible letters are: ‘E’ (Earnings), ‘X’ (Expenditure), ‘T’ (Transactions), ‘C’ (Cashregister), ‘D’ (Assets). By providing one of those letter you specify that it should be included in the datev export. Some combinations are: ‘EXTCD’, ‘EXTD’ … |  |
| **download** | **Boolean** | Specifies if the document is downloaded | [optional] |
| **with_unpaid_documents** | **Boolean** | include unpaid documents | [optional] |
| **with_enshrined_documents** | **Boolean** | include enshrined documents | [optional] |
| **enshrine** | **Boolean** | Specify if you want to enshrine all models which were included in the export | [optional] |

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_invoice

> <ExportInvoice200Response> export_invoice(sev_query, opts)

Export invoice

Export all invoices as csv

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportInvoiceSevQueryParameter.new({model_name: Invoice, object_name: SevQuery}) # ExportInvoiceSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export invoice
  result = api_instance.export_invoice(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_invoice: #{e}"
end
```

#### Using the export_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportInvoice200Response>, Integer, Hash)> export_invoice_with_http_info(sev_query, opts)

```ruby
begin
  # Export invoice
  data, status_code, headers = api_instance.export_invoice_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportInvoice200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportInvoiceSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportInvoice200Response**](ExportInvoice200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_invoice_zip

> <ExportInvoiceZip200Response> export_invoice_zip(sev_query, opts)

Export Invoice as zip

Export all invoices as zip

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportInvoiceZipSevQueryParameter.new({model_name: 3.56, object_name: SevQuery}) # ExportInvoiceZipSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export Invoice as zip
  result = api_instance.export_invoice_zip(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_invoice_zip: #{e}"
end
```

#### Using the export_invoice_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportInvoiceZip200Response>, Integer, Hash)> export_invoice_zip_with_http_info(sev_query, opts)

```ruby
begin
  # Export Invoice as zip
  data, status_code, headers = api_instance.export_invoice_zip_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportInvoiceZip200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_invoice_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportInvoiceZipSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportInvoiceZip200Response**](ExportInvoiceZip200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_transactions

> <ExportTransactions200Response> export_transactions(sev_query, opts)

Export transaction

Export all transactions as csv

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportTransactionsSevQueryParameter.new({model_name: CheckAccountTransaction, object_name: SevQuery}) # ExportTransactionsSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export transaction
  result = api_instance.export_transactions(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_transactions: #{e}"
end
```

#### Using the export_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportTransactions200Response>, Integer, Hash)> export_transactions_with_http_info(sev_query, opts)

```ruby
begin
  # Export transaction
  data, status_code, headers = api_instance.export_transactions_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportTransactions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportTransactionsSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportTransactions200Response**](ExportTransactions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_voucher

> <ExportVoucher200Response> export_voucher(sev_query, opts)

Export voucher as zip

Export all vouchers as zip

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportVoucherSevQueryParameter.new({model_name: Voucher, object_name: SevQuery}) # ExportVoucherSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export voucher as zip
  result = api_instance.export_voucher(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_voucher: #{e}"
end
```

#### Using the export_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportVoucher200Response>, Integer, Hash)> export_voucher_with_http_info(sev_query, opts)

```ruby
begin
  # Export voucher as zip
  data, status_code, headers = api_instance.export_voucher_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportVoucher200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportVoucherSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportVoucher200Response**](ExportVoucher200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## export_voucher_zip

> <ExportVoucherZip200Response> export_voucher_zip(sev_query, opts)

Export voucher zip

export all vouchers as zip

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

api_instance = OpenapiClient::ExportApi.new
sev_query = OpenapiClient::ExportVoucherZipSevQueryParameter.new({model_name: Voucher, object_name: SevQuery}) # ExportVoucherZipSevQueryParameter | 
opts = {
  download: true # Boolean | 
}

begin
  # Export voucher zip
  result = api_instance.export_voucher_zip(sev_query, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_voucher_zip: #{e}"
end
```

#### Using the export_voucher_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExportVoucherZip200Response>, Integer, Hash)> export_voucher_zip_with_http_info(sev_query, opts)

```ruby
begin
  # Export voucher zip
  data, status_code, headers = api_instance.export_voucher_zip_with_http_info(sev_query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExportVoucherZip200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->export_voucher_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_query** | [**ExportVoucherZipSevQueryParameter**](.md) |  |  |
| **download** | **Boolean** |  | [optional] |

### Return type

[**ExportVoucherZip200Response**](ExportVoucherZip200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_export_config

> <CheckAccountTransactionEnshrine200Response> update_export_config(sev_client_id, opts)

Update export config

Update export config to export datev CSV

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

api_instance = OpenapiClient::ExportApi.new
sev_client_id = 8.14 # Float | id of sevClient
opts = {
  update_export_config_request: OpenapiClient::UpdateExportConfigRequest.new({accountant_number: 1324124, accountant_client_number: 1234152, accounting_year_begin: 1681907569}) # UpdateExportConfigRequest | Specify the update
}

begin
  # Update export config
  result = api_instance.update_export_config(sev_client_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->update_export_config: #{e}"
end
```

#### Using the update_export_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAccountTransactionEnshrine200Response>, Integer, Hash)> update_export_config_with_http_info(sev_client_id, opts)

```ruby
begin
  # Update export config
  data, status_code, headers = api_instance.update_export_config_with_http_info(sev_client_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAccountTransactionEnshrine200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ExportApi->update_export_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sev_client_id** | **Float** | id of sevClient |  |
| **update_export_config_request** | [**UpdateExportConfigRequest**](UpdateExportConfigRequest.md) | Specify the update | [optional] |

### Return type

[**CheckAccountTransactionEnshrine200Response**](CheckAccountTransactionEnshrine200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

