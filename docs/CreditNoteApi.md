# OpenapiClient::CreditNoteApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**book_credit_note**](CreditNoteApi.md#book_credit_note) | **PUT** /CreditNote/{creditNoteId}/bookAmount | Book a credit note |
| [**create_credit_note_from_invoice**](CreditNoteApi.md#create_credit_note_from_invoice) | **POST** /CreditNote/Factory/createFromInvoice | Creates a new creditNote from an invoice |
| [**create_credit_note_from_voucher**](CreditNoteApi.md#create_credit_note_from_voucher) | **POST** /CreditNote/Factory/createFromVoucher | Creates a new creditNote from a voucher |
| [**createcredit_note**](CreditNoteApi.md#createcredit_note) | **POST** /CreditNote/Factory/saveCreditNote | Create a new creditNote |
| [**credit_note_enshrine**](CreditNoteApi.md#credit_note_enshrine) | **PUT** /CreditNote/{creditNoteId}/enshrine | Enshrine |
| [**credit_note_get_pdf**](CreditNoteApi.md#credit_note_get_pdf) | **GET** /CreditNote/{creditNoteId}/getPdf | Retrieve pdf document of a credit note |
| [**credit_note_reset_to_draft**](CreditNoteApi.md#credit_note_reset_to_draft) | **PUT** /CreditNote/{creditNoteId}/resetToDraft | Reset status to draft |
| [**credit_note_reset_to_open**](CreditNoteApi.md#credit_note_reset_to_open) | **PUT** /CreditNote/{creditNoteId}/resetToOpen | Reset status to open |
| [**credit_note_send_by**](CreditNoteApi.md#credit_note_send_by) | **PUT** /CreditNote/{creditNoteId}/sendBy | Mark credit note as sent |
| [**deletecredit_note**](CreditNoteApi.md#deletecredit_note) | **DELETE** /CreditNote/{creditNoteId} | Deletes an creditNote |
| [**get_credit_notes**](CreditNoteApi.md#get_credit_notes) | **GET** /CreditNote | Retrieve CreditNote |
| [**getcredit_note_by_id**](CreditNoteApi.md#getcredit_note_by_id) | **GET** /CreditNote/{creditNoteId} | Find creditNote by ID |
| [**send_credit_note_by_printing**](CreditNoteApi.md#send_credit_note_by_printing) | **GET** /CreditNote/{creditNoteId}/sendByWithRender | Send credit note by printing |
| [**send_credit_note_via_e_mail**](CreditNoteApi.md#send_credit_note_via_e_mail) | **POST** /CreditNote/{creditNoteId}/sendViaEmail | Send credit note via email |
| [**updatecredit_note**](CreditNoteApi.md#updatecredit_note) | **PUT** /CreditNote/{creditNoteId} | Update an existing creditNote |


## book_credit_note

> <BookCreditNote200Response> book_credit_note(credit_note_id, opts)

Book a credit note

Booking the credit note with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking a credit note, all by using the same endpoint.<br> Conveniently, the booking process is exactly the same as the process for invoices and vouchers.<br> For this reason, you can have a look at it in the <a href='#tag/Invoice/How-to-book-an-invoice'>invoice chapter</a> and all you need to do is to change \"Invoice\" into \"CreditNote\" in the URL.

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of credit note to book
opts = {
  book_credit_note_request: OpenapiClient::BookCreditNoteRequest.new({amount: 3.56, date: 37, type: 'FULL_PAYMENT', check_account: OpenapiClient::BookCreditNoteRequestCheckAccount.new({id: 37, object_name: 'CheckAccount'})}) # BookCreditNoteRequest | Booking data
}

begin
  # Book a credit note
  result = api_instance.book_credit_note(credit_note_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->book_credit_note: #{e}"
end
```

#### Using the book_credit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookCreditNote200Response>, Integer, Hash)> book_credit_note_with_http_info(credit_note_id, opts)

```ruby
begin
  # Book a credit note
  data, status_code, headers = api_instance.book_credit_note_with_http_info(credit_note_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookCreditNote200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->book_credit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of credit note to book |  |
| **book_credit_note_request** | [**BookCreditNoteRequest**](BookCreditNoteRequest.md) | Booking data | [optional] |

### Return type

[**BookCreditNote200Response**](BookCreditNote200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_credit_note_from_invoice

> <CreateCreditNoteFromInvoice201Response> create_credit_note_from_invoice(opts)

Creates a new creditNote from an invoice

Use this endpoint to create a new creditNote from an invoice.

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

api_instance = OpenapiClient::CreditNoteApi.new
opts = {
  create_credit_note_from_invoice_request: OpenapiClient::CreateCreditNoteFromInvoiceRequest.new({invoice: OpenapiClient::CreateCreditNoteFromInvoiceRequestInvoice.new({id: 1234, object_name: 'Invoice'})}) # CreateCreditNoteFromInvoiceRequest | 
}

begin
  # Creates a new creditNote from an invoice
  result = api_instance.create_credit_note_from_invoice(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->create_credit_note_from_invoice: #{e}"
end
```

#### Using the create_credit_note_from_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreditNoteFromInvoice201Response>, Integer, Hash)> create_credit_note_from_invoice_with_http_info(opts)

```ruby
begin
  # Creates a new creditNote from an invoice
  data, status_code, headers = api_instance.create_credit_note_from_invoice_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreditNoteFromInvoice201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->create_credit_note_from_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_credit_note_from_invoice_request** | [**CreateCreditNoteFromInvoiceRequest**](CreateCreditNoteFromInvoiceRequest.md) |  | [optional] |

### Return type

[**CreateCreditNoteFromInvoice201Response**](CreateCreditNoteFromInvoice201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_credit_note_from_voucher

> <CreateCreditNoteFromInvoice201Response> create_credit_note_from_voucher(opts)

Creates a new creditNote from a voucher

**Not supported with sevdesk-Update 2.0**  Use this endpoint to create a new creditNote from a voucher. 

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

api_instance = OpenapiClient::CreditNoteApi.new
opts = {
  create_credit_note_from_voucher_request: OpenapiClient::CreateCreditNoteFromVoucherRequest.new({voucher: OpenapiClient::CreateCreditNoteFromVoucherRequestVoucher.new({id: 1234, object_name: 'Voucher'})}) # CreateCreditNoteFromVoucherRequest | 
}

begin
  # Creates a new creditNote from a voucher
  result = api_instance.create_credit_note_from_voucher(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->create_credit_note_from_voucher: #{e}"
end
```

#### Using the create_credit_note_from_voucher_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCreditNoteFromInvoice201Response>, Integer, Hash)> create_credit_note_from_voucher_with_http_info(opts)

```ruby
begin
  # Creates a new creditNote from a voucher
  data, status_code, headers = api_instance.create_credit_note_from_voucher_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCreditNoteFromInvoice201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->create_credit_note_from_voucher_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_credit_note_from_voucher_request** | [**CreateCreditNoteFromVoucherRequest**](CreateCreditNoteFromVoucherRequest.md) |  | [optional] |

### Return type

[**CreateCreditNoteFromInvoice201Response**](CreateCreditNoteFromInvoice201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createcredit_note

> <SaveCreditNoteResponse> createcredit_note(opts)

Create a new creditNote

The list of parameters starts with the credit note array.<br> This array contains all required attributes for a complete credit note.<br> Most of the attributes are covered in the credit note attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br> The list of parameters then continues with the credit note position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more credit note positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \"1\" instead of \"0\".<br><br> The list ends with the five parameters creditNotePosDelete, discountSave, discountDelete, takeDefaultAddress and forCashRegister.<br> They only play a minor role if you only want to create a credit note but we will shortly explain what they can do.<br> With creditNotePosDelete you have to option to delete credit note positions as this request can also be used to update credit notes.<br> Both discount parameters are deprecated and have no use for credit notes, however they need to be provided in case you want to use the following two parameters.<br> With takeDefaultAddress you can specify that the first address of the contact you are using for the credit note is taken for the credit note address attribute automatically, so you don't need to provide the address yourself.<br> Finally, the forCashRegister parameter needs to be set to <b>true</b> if your credit note is to be booked on the cash register.<br> If you want to know more about these parameters, for example if you want to use this request to update credit notes, feel free to contact our support.<br> Finally, after covering all parameters, they only important information left, is that the order of the last five attributes always needs to be kept.<br> You will also always need to provide all of them, as otherwise the request won't work properly.

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

api_instance = OpenapiClient::CreditNoteApi.new
opts = {
  save_credit_note: OpenapiClient::SaveCreditNote.new({credit_note: OpenapiClient::ModelCreditNote.new({object_name: 'CreditNote', map_all: false, credit_note_number: 'GU-1000', contact: OpenapiClient::ModelCreditNoteContact.new({id: 37, object_name: 'Contact'}), credit_note_date: Time.now, status: '100', header: 'My GU-1000', address_country: OpenapiClient::ModelCreditNoteAddressCountry.new({id: 1, object_name: 'StaticCountry'}), contact_person: OpenapiClient::ModelCreditNoteContactPerson.new({id: 37, object_name: 'SevUser'}), tax_rule: OpenapiClient::ModelCreditNoteResponseTaxRule.new({id: '1', object_name: 'TaxRule'}), tax_rate: 0, tax_text: 'Umsatzsteuer 19%', tax_type: 'default', booking_category: 'PROVISION', currency: 'EUR'})}) # SaveCreditNote | Creation data. Please be aware, that you need to provide at least all required parameter      of the credit note model!
}

begin
  # Create a new creditNote
  result = api_instance.createcredit_note(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->createcredit_note: #{e}"
end
```

#### Using the createcredit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SaveCreditNoteResponse>, Integer, Hash)> createcredit_note_with_http_info(opts)

```ruby
begin
  # Create a new creditNote
  data, status_code, headers = api_instance.createcredit_note_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SaveCreditNoteResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->createcredit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_credit_note** | [**SaveCreditNote**](SaveCreditNote.md) | Creation data. Please be aware, that you need to provide at least all required parameter      of the credit note model! | [optional] |

### Return type

[**SaveCreditNoteResponse**](SaveCreditNoteResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## credit_note_enshrine

> <CheckAccountTransactionEnshrine200Response> credit_note_enshrine(credit_note_id)

Enshrine

Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"200\"`) or higher.  Enshrined credit notes cannot be changed. This operation cannot be undone. 

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of the credit note to enshrine

begin
  # Enshrine
  result = api_instance.credit_note_enshrine(credit_note_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_enshrine: #{e}"
end
```

#### Using the credit_note_enshrine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAccountTransactionEnshrine200Response>, Integer, Hash)> credit_note_enshrine_with_http_info(credit_note_id)

```ruby
begin
  # Enshrine
  data, status_code, headers = api_instance.credit_note_enshrine_with_http_info(credit_note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAccountTransactionEnshrine200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_enshrine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of the credit note to enshrine |  |

### Return type

[**CheckAccountTransactionEnshrine200Response**](CheckAccountTransactionEnshrine200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## credit_note_get_pdf

> <CreditNoteGetPdf200Response> credit_note_get_pdf(credit_note_id, opts)

Retrieve pdf document of a credit note

Retrieves the pdf document of a credit note with additional metadata.

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of credit note from which you want the pdf
opts = {
  download: true, # Boolean | If u want to download the pdf of the credit note.
  prevent_send_by: true # Boolean | Defines if u want to send the credit note.
}

begin
  # Retrieve pdf document of a credit note
  result = api_instance.credit_note_get_pdf(credit_note_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_get_pdf: #{e}"
end
```

#### Using the credit_note_get_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNoteGetPdf200Response>, Integer, Hash)> credit_note_get_pdf_with_http_info(credit_note_id, opts)

```ruby
begin
  # Retrieve pdf document of a credit note
  data, status_code, headers = api_instance.credit_note_get_pdf_with_http_info(credit_note_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNoteGetPdf200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_get_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of credit note from which you want the pdf |  |
| **download** | **Boolean** | If u want to download the pdf of the credit note. | [optional] |
| **prevent_send_by** | **Boolean** | Defines if u want to send the credit note. | [optional] |

### Return type

[**CreditNoteGetPdf200Response**](CreditNoteGetPdf200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## credit_note_reset_to_draft

> <CreditNoteResetToDraft200Response> credit_note_reset_to_draft(credit_note_id)

Reset status to draft

Resets the status to \"Draft\" (`\"status\": \"100\"`).<br> This is only possible if the credit note has the status \"Open\" (`\"status\": \"200\"`).<br> If it has a higher status use [CreditNote/{creditNoteId}/resetToOpen](#tag/CreditNote/operation/creditNoteResetToOpen) first. 

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of the credit note to reset

begin
  # Reset status to draft
  result = api_instance.credit_note_reset_to_draft(credit_note_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_reset_to_draft: #{e}"
end
```

#### Using the credit_note_reset_to_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNoteResetToDraft200Response>, Integer, Hash)> credit_note_reset_to_draft_with_http_info(credit_note_id)

```ruby
begin
  # Reset status to draft
  data, status_code, headers = api_instance.credit_note_reset_to_draft_with_http_info(credit_note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNoteResetToDraft200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_reset_to_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of the credit note to reset |  |

### Return type

[**CreditNoteResetToDraft200Response**](CreditNoteResetToDraft200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## credit_note_reset_to_open

> <CreditNoteResetToOpen200Response> credit_note_reset_to_open(credit_note_id)

Reset status to open

Resets the status \"Open\" (`\"status\": \"200\"`). Linked transactions will be unlinked.<br> This is not possible if the credit note itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \"Open\" (`\"status\": \"200\"`).<br> Use [CreditNote/{creditNoteId}/sendBy](#tag/CreditNote/operation/creditNoteSendBy) / [CreditNote/{creditNoteId}/sendViaEmail](#tag/CreditNote/operation/sendCreditNoteViaEMail) instead. 

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of the credit note to reset

begin
  # Reset status to open
  result = api_instance.credit_note_reset_to_open(credit_note_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_reset_to_open: #{e}"
end
```

#### Using the credit_note_reset_to_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditNoteResetToOpen200Response>, Integer, Hash)> credit_note_reset_to_open_with_http_info(credit_note_id)

```ruby
begin
  # Reset status to open
  data, status_code, headers = api_instance.credit_note_reset_to_open_with_http_info(credit_note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditNoteResetToOpen200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_reset_to_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of the credit note to reset |  |

### Return type

[**CreditNoteResetToOpen200Response**](CreditNoteResetToOpen200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## credit_note_send_by

> <ModelCreditNoteResponse> credit_note_send_by(credit_note_id, opts)

Mark credit note as sent

Marks an credit note as sent by a chosen send type.

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of credit note to mark as sent
opts = {
  credit_note_send_by_request: OpenapiClient::CreditNoteSendByRequest.new({send_type: 'VPR', send_draft: false}) # CreditNoteSendByRequest | Specify the send type
}

begin
  # Mark credit note as sent
  result = api_instance.credit_note_send_by(credit_note_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_send_by: #{e}"
end
```

#### Using the credit_note_send_by_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCreditNoteResponse>, Integer, Hash)> credit_note_send_by_with_http_info(credit_note_id, opts)

```ruby
begin
  # Mark credit note as sent
  data, status_code, headers = api_instance.credit_note_send_by_with_http_info(credit_note_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCreditNoteResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->credit_note_send_by_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of credit note to mark as sent |  |
| **credit_note_send_by_request** | [**CreditNoteSendByRequest**](CreditNoteSendByRequest.md) | Specify the send type | [optional] |

### Return type

[**ModelCreditNoteResponse**](ModelCreditNoteResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deletecredit_note

> <DeleteCheckAccount200Response> deletecredit_note(credit_note_id)

Deletes an creditNote

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | Id of creditNote resource to delete

begin
  # Deletes an creditNote
  result = api_instance.deletecredit_note(credit_note_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->deletecredit_note: #{e}"
end
```

#### Using the deletecredit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCheckAccount200Response>, Integer, Hash)> deletecredit_note_with_http_info(credit_note_id)

```ruby
begin
  # Deletes an creditNote
  data, status_code, headers = api_instance.deletecredit_note_with_http_info(credit_note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCheckAccount200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->deletecredit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | Id of creditNote resource to delete |  |

### Return type

[**DeleteCheckAccount200Response**](DeleteCheckAccount200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_credit_notes

> <GetCreditNotes200Response> get_credit_notes(opts)

Retrieve CreditNote

There are a multitude of parameter which can be used to filter.

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

api_instance = OpenapiClient::CreditNoteApi.new
opts = {
  status: '100', # String | Status of the CreditNote
  credit_note_number: 'credit_note_number_example', # String | Retrieve all CreditNotes with this creditNote number
  start_date: 01.01.2020, # Integer | Retrieve all CreditNotes with a date equal or higher
  end_date: 01.01.2021, # Integer | Retrieve all CreditNotes with a date equal or lower
  contact_id: 56, # Integer | Retrieve all CreditNotes with this contact. Must be provided with contact[objectName]
  contact_object_name: 'contact_object_name_example' # String | Only required if contact[id] was provided. 'Contact' should be used as value.
}

begin
  # Retrieve CreditNote
  result = api_instance.get_credit_notes(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->get_credit_notes: #{e}"
end
```

#### Using the get_credit_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreditNotes200Response>, Integer, Hash)> get_credit_notes_with_http_info(opts)

```ruby
begin
  # Retrieve CreditNote
  data, status_code, headers = api_instance.get_credit_notes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreditNotes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->get_credit_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the CreditNote | [optional] |
| **credit_note_number** | **String** | Retrieve all CreditNotes with this creditNote number | [optional] |
| **start_date** | **Integer** | Retrieve all CreditNotes with a date equal or higher | [optional] |
| **end_date** | **Integer** | Retrieve all CreditNotes with a date equal or lower | [optional] |
| **contact_id** | **Integer** | Retrieve all CreditNotes with this contact. Must be provided with contact[objectName] | [optional] |
| **contact_object_name** | **String** | Only required if contact[id] was provided. &#39;Contact&#39; should be used as value. | [optional] |

### Return type

[**GetCreditNotes200Response**](GetCreditNotes200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getcredit_note_by_id

> <GetCreditNotes200Response> getcredit_note_by_id(credit_note_id)

Find creditNote by ID

Returns a single creditNote

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of creditNote to return

begin
  # Find creditNote by ID
  result = api_instance.getcredit_note_by_id(credit_note_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->getcredit_note_by_id: #{e}"
end
```

#### Using the getcredit_note_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCreditNotes200Response>, Integer, Hash)> getcredit_note_by_id_with_http_info(credit_note_id)

```ruby
begin
  # Find creditNote by ID
  data, status_code, headers = api_instance.getcredit_note_by_id_with_http_info(credit_note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCreditNotes200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->getcredit_note_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of creditNote to return |  |

### Return type

[**GetCreditNotes200Response**](GetCreditNotes200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_credit_note_by_printing

> <ModelCreditNoteSendByWithRender> send_credit_note_by_printing(credit_note_id, send_type)

Send credit note by printing

Sending a credit note to end-customers is an important part of the bookkeeping process.<br> Depending on the way you want to send the credit note, you need to use different endpoints.<br> Let's start with just printing out the credit note, meaning we only need to render the pdf.

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of creditNote to return
send_type = 'PRN' # String | the type you want to print.

begin
  # Send credit note by printing
  result = api_instance.send_credit_note_by_printing(credit_note_id, send_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->send_credit_note_by_printing: #{e}"
end
```

#### Using the send_credit_note_by_printing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCreditNoteSendByWithRender>, Integer, Hash)> send_credit_note_by_printing_with_http_info(credit_note_id, send_type)

```ruby
begin
  # Send credit note by printing
  data, status_code, headers = api_instance.send_credit_note_by_printing_with_http_info(credit_note_id, send_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCreditNoteSendByWithRender>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->send_credit_note_by_printing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of creditNote to return |  |
| **send_type** | **String** | the type you want to print. |  |

### Return type

[**ModelCreditNoteSendByWithRender**](ModelCreditNoteSendByWithRender.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_credit_note_via_e_mail

> <SendCreditNoteViaEMail201Response> send_credit_note_via_e_mail(credit_note_id, opts)

Send credit note via email

This endpoint sends the specified credit note to a customer via email.<br>      This will automatically mark the credit note as sent.<br>      Please note, that in production an credit note is not allowed to be changed after this happened!

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of credit note to be sent via email
opts = {
  send_credit_note_via_e_mail_request: OpenapiClient::SendCreditNoteViaEMailRequest.new({to_email: 'to_email_example', subject: 'subject_example', text: 'text_example'}) # SendCreditNoteViaEMailRequest | Mail data
}

begin
  # Send credit note via email
  result = api_instance.send_credit_note_via_e_mail(credit_note_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->send_credit_note_via_e_mail: #{e}"
end
```

#### Using the send_credit_note_via_e_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendCreditNoteViaEMail201Response>, Integer, Hash)> send_credit_note_via_e_mail_with_http_info(credit_note_id, opts)

```ruby
begin
  # Send credit note via email
  data, status_code, headers = api_instance.send_credit_note_via_e_mail_with_http_info(credit_note_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendCreditNoteViaEMail201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->send_credit_note_via_e_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of credit note to be sent via email |  |
| **send_credit_note_via_e_mail_request** | [**SendCreditNoteViaEMailRequest**](SendCreditNoteViaEMailRequest.md) | Mail data | [optional] |

### Return type

[**SendCreditNoteViaEMail201Response**](SendCreditNoteViaEMail201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updatecredit_note

> <ModelCreditNoteResponse> updatecredit_note(credit_note_id, opts)

Update an existing creditNote

Update a creditNote

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

api_instance = OpenapiClient::CreditNoteApi.new
credit_note_id = 56 # Integer | ID of creditNote to update
opts = {
  model_credit_note_update: OpenapiClient::ModelCreditNoteUpdate.new # ModelCreditNoteUpdate | Update data
}

begin
  # Update an existing creditNote
  result = api_instance.updatecredit_note(credit_note_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->updatecredit_note: #{e}"
end
```

#### Using the updatecredit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelCreditNoteResponse>, Integer, Hash)> updatecredit_note_with_http_info(credit_note_id, opts)

```ruby
begin
  # Update an existing creditNote
  data, status_code, headers = api_instance.updatecredit_note_with_http_info(credit_note_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelCreditNoteResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CreditNoteApi->updatecredit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note_id** | **Integer** | ID of creditNote to update |  |
| **model_credit_note_update** | [**ModelCreditNoteUpdate**](ModelCreditNoteUpdate.md) | Update data | [optional] |

### Return type

[**ModelCreditNoteResponse**](ModelCreditNoteResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

