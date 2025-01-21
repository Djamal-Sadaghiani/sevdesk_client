# OpenapiClient::InvoiceApi

All URIs are relative to *https://my.sevdesk.de/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**book_invoice**](InvoiceApi.md#book_invoice) | **PUT** /Invoice/{invoiceId}/bookAmount | Book an invoice |
| [**cancel_invoice**](InvoiceApi.md#cancel_invoice) | **POST** /Invoice/{invoiceId}/cancelInvoice | Cancel an invoice / Create cancellation invoice |
| [**create_invoice_by_factory**](InvoiceApi.md#create_invoice_by_factory) | **POST** /Invoice/Factory/saveInvoice | Create a new invoice |
| [**create_invoice_from_order**](InvoiceApi.md#create_invoice_from_order) | **POST** /Invoice/Factory/createInvoiceFromOrder | Create invoice from order |
| [**create_invoice_reminder**](InvoiceApi.md#create_invoice_reminder) | **POST** /Invoice/Factory/createInvoiceReminder | Create invoice reminder |
| [**get_invoice_by_id**](InvoiceApi.md#get_invoice_by_id) | **GET** /Invoice/{invoiceId} | Find invoice by ID |
| [**get_invoice_positions_by_id**](InvoiceApi.md#get_invoice_positions_by_id) | **GET** /Invoice/{invoiceId}/getPositions | Find invoice positions |
| [**get_invoices**](InvoiceApi.md#get_invoices) | **GET** /Invoice | Retrieve invoices |
| [**get_is_invoice_partially_paid**](InvoiceApi.md#get_is_invoice_partially_paid) | **GET** /Invoice/{invoiceId}/getIsPartiallyPaid | Check if an invoice is already partially paid |
| [**invoice_enshrine**](InvoiceApi.md#invoice_enshrine) | **PUT** /Invoice/{invoiceId}/enshrine | Enshrine |
| [**invoice_get_pdf**](InvoiceApi.md#invoice_get_pdf) | **GET** /Invoice/{invoiceId}/getPdf | Retrieve pdf document of an invoice |
| [**invoice_get_xml**](InvoiceApi.md#invoice_get_xml) | **GET** /Invoice/{invoiceId}/getXml | Retrieve XML of an e-invoice |
| [**invoice_render**](InvoiceApi.md#invoice_render) | **POST** /Invoice/{invoiceId}/render | Render the pdf document of an invoice |
| [**invoice_reset_to_draft**](InvoiceApi.md#invoice_reset_to_draft) | **PUT** /Invoice/{invoiceId}/resetToDraft | Reset status to draft |
| [**invoice_reset_to_open**](InvoiceApi.md#invoice_reset_to_open) | **PUT** /Invoice/{invoiceId}/resetToOpen | Reset status to open |
| [**invoice_send_by**](InvoiceApi.md#invoice_send_by) | **PUT** /Invoice/{invoiceId}/sendBy | Mark invoice as sent |
| [**send_invoice_via_e_mail**](InvoiceApi.md#send_invoice_via_e_mail) | **POST** /Invoice/{invoiceId}/sendViaEmail | Send invoice via email |


## book_invoice

> <BookInvoice200Response> book_invoice(invoice_id, opts)

Book an invoice

Booking the invoice with a transaction is probably the most important part in the bookkeeping process.<br> There are several ways on correctly booking an invoice, all by using the same endpoint.<br> for more information look <a href='#tag/Invoice/How-to-book-an-invoice'>here</a>.

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to book
opts = {
  book_invoice_request: OpenapiClient::BookInvoiceRequest.new({amount: 3.56, date: 37, type: 'FULL_PAYMENT', check_account: OpenapiClient::BookCreditNoteRequestCheckAccount.new({id: 37, object_name: 'CheckAccount'})}) # BookInvoiceRequest | Booking data
}

begin
  # Book an invoice
  result = api_instance.book_invoice(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->book_invoice: #{e}"
end
```

#### Using the book_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookInvoice200Response>, Integer, Hash)> book_invoice_with_http_info(invoice_id, opts)

```ruby
begin
  # Book an invoice
  data, status_code, headers = api_instance.book_invoice_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookInvoice200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->book_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to book |  |
| **book_invoice_request** | [**BookInvoiceRequest**](BookInvoiceRequest.md) | Booking data | [optional] |

### Return type

[**BookInvoice200Response**](BookInvoice200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_invoice

> <ModelInvoiceResponse> cancel_invoice(invoice_id)

Cancel an invoice / Create cancellation invoice

This endpoint will cancel the specified invoice therefor creating a cancellation invoice.<br>       The cancellation invoice will be automatically paid and the source invoices status will change to 'cancelled'.

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to be cancelled

begin
  # Cancel an invoice / Create cancellation invoice
  result = api_instance.cancel_invoice(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->cancel_invoice: #{e}"
end
```

#### Using the cancel_invoice_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelInvoiceResponse>, Integer, Hash)> cancel_invoice_with_http_info(invoice_id)

```ruby
begin
  # Cancel an invoice / Create cancellation invoice
  data, status_code, headers = api_instance.cancel_invoice_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelInvoiceResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->cancel_invoice_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to be cancelled |  |

### Return type

[**ModelInvoiceResponse**](ModelInvoiceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_invoice_by_factory

> <SaveInvoiceResponse> create_invoice_by_factory(opts)

Create a new invoice

This endpoint offers you the following functionality.       <ul>          <li>Create invoices together with positions and discounts</li>          <li>Delete positions while adding new ones</li>          <li>Delete or add discounts, or both at the same time</li>          <li>Automatically fill the address of the supplied contact into the invoice address</li>       </ul>       To make your own request sample slimmer, you can omit all parameters which are not required and nullable.       However, for a valid and logical bookkeeping document, you will also need some of them to ensure that all the necessary data is in the invoice.<br><br> The list of parameters starts with the invoice array.<br> This array contains all required attributes for a complete invoice.<br> Most of the attributes are covered in the invoice attribute list, there are only two parameters standing out, namely <b>mapAll</b> and <b>objectName</b>.<br> These are just needed for our system and you always need to provide them.<br><br> The list of parameters then continues with the invoice position array.<br> With this array you have the possibility to add multiple positions at once.<br> In the example it only contains one position, again together with the parameters <b>mapAll</b> and <b>objectName</b>, however, you can add more invoice positions by extending the array.<br> So if you wanted to add another position, you would add the same list of parameters with an incremented array index of \"1\" instead of \"0\".<br><br> The list ends with the four parameters invoicePosDelete, discountSave, discountDelete and takeDefaultAddress.<br> They only play a minor role if you only want to create an invoice but we will shortly explain what they can do.<br> With invoicePosDelete you have to option to delete invoice positions as this request can also be used to update invoices.<br> With discountSave you can add discounts to your invoice.<br> With discountDelete you can delete discounts from your invoice.<br> With takeDefaultAddress you can specify that the first address of the contact you are using for the invoice is taken for the invoice address attribute automatically, so you don't need to provide the address yourself.<br> If you want to know more about these parameters, for example if you want to use this request to update invoices, feel free to contact our support.<br><br> Finally, after covering all parameters, they only important information left, is that the order of the last four attributes always needs to be kept.<br> You will also always need to provide all of them, as otherwise the request won't work properly.<br><br> <b>Warning:</b> You can not create a regular invoice with the <b>deliveryDate</b> being later than the <b>invoiceDate</b>.<br> To do that you will need to create a so called <b>Abschlagsrechnung</b> by setting the <b>invoiceType</b> parameter to <b>AR</b>.

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

api_instance = OpenapiClient::InvoiceApi.new
opts = {
  save_invoice: OpenapiClient::SaveInvoice.new({invoice: OpenapiClient::ModelInvoice.new({contact: OpenapiClient::ModelInvoiceContact.new({id: 37, object_name: 'Contact'}), contact_person: OpenapiClient::ModelInvoiceContactPerson.new({id: 37, object_name: 'SevUser'}), invoice_date: '01.01.2022', discount: 0, address_country: OpenapiClient::ModelInvoiceAddressCountry.new({id: 1, object_name: 'StaticCountry'}), status: '50', tax_rate: 0, tax_rule: OpenapiClient::ModelInvoiceResponseTaxRule.new({id: '1', object_name: 'TaxRule'}), tax_text: 'Umsatzsteuer 19%', tax_type: 'default', invoice_type: 'RE', currency: 'EUR', map_all: false})}) # SaveInvoice | Creation data. Please be aware, that you need to provide at least all required parameter      of the invoice model!
}

begin
  # Create a new invoice
  result = api_instance.create_invoice_by_factory(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->create_invoice_by_factory: #{e}"
end
```

#### Using the create_invoice_by_factory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SaveInvoiceResponse>, Integer, Hash)> create_invoice_by_factory_with_http_info(opts)

```ruby
begin
  # Create a new invoice
  data, status_code, headers = api_instance.create_invoice_by_factory_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SaveInvoiceResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->create_invoice_by_factory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_invoice** | [**SaveInvoice**](SaveInvoice.md) | Creation data. Please be aware, that you need to provide at least all required parameter      of the invoice model! | [optional] |

### Return type

[**SaveInvoiceResponse**](SaveInvoiceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_invoice_from_order

> <ModelInvoiceResponse> create_invoice_from_order(opts)

Create invoice from order

Create an invoice from an order

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

api_instance = OpenapiClient::InvoiceApi.new
opts = {
  model_create_invoice_from_order: OpenapiClient::ModelCreateInvoiceFromOrder.new({order: OpenapiClient::ModelCreateInvoiceFromOrderOrder.new({id: 37, object_name: 'Order'})}) # ModelCreateInvoiceFromOrder | Create invoice
}

begin
  # Create invoice from order
  result = api_instance.create_invoice_from_order(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->create_invoice_from_order: #{e}"
end
```

#### Using the create_invoice_from_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelInvoiceResponse>, Integer, Hash)> create_invoice_from_order_with_http_info(opts)

```ruby
begin
  # Create invoice from order
  data, status_code, headers = api_instance.create_invoice_from_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelInvoiceResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->create_invoice_from_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_create_invoice_from_order** | [**ModelCreateInvoiceFromOrder**](ModelCreateInvoiceFromOrder.md) | Create invoice | [optional] |

### Return type

[**ModelInvoiceResponse**](ModelInvoiceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_invoice_reminder

> <ModelInvoiceResponse> create_invoice_reminder(invoice_id, invoice_object_name, opts)

Create invoice reminder

Create an reminder from an invoice

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | the id of the invoice
invoice_object_name = 'Invoice' # String | Model name, which is 'Invoice'
opts = {
  create_invoice_reminder_request: OpenapiClient::CreateInvoiceReminderRequest.new({invoice: OpenapiClient::CreateInvoiceReminderRequestInvoice.new({id: 37, object_name: 'Invoice'})}) # CreateInvoiceReminderRequest | Create invoice
}

begin
  # Create invoice reminder
  result = api_instance.create_invoice_reminder(invoice_id, invoice_object_name, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->create_invoice_reminder: #{e}"
end
```

#### Using the create_invoice_reminder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelInvoiceResponse>, Integer, Hash)> create_invoice_reminder_with_http_info(invoice_id, invoice_object_name, opts)

```ruby
begin
  # Create invoice reminder
  data, status_code, headers = api_instance.create_invoice_reminder_with_http_info(invoice_id, invoice_object_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelInvoiceResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->create_invoice_reminder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | the id of the invoice |  |
| **invoice_object_name** | **String** | Model name, which is &#39;Invoice&#39; |  |
| **create_invoice_reminder_request** | [**CreateInvoiceReminderRequest**](CreateInvoiceReminderRequest.md) | Create invoice | [optional] |

### Return type

[**ModelInvoiceResponse**](ModelInvoiceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_invoice_by_id

> <GetInvoices200Response> get_invoice_by_id(invoice_id)

Find invoice by ID

Returns a single invoice

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to return

begin
  # Find invoice by ID
  result = api_instance.get_invoice_by_id(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_invoice_by_id: #{e}"
end
```

#### Using the get_invoice_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoices200Response>, Integer, Hash)> get_invoice_by_id_with_http_info(invoice_id)

```ruby
begin
  # Find invoice by ID
  data, status_code, headers = api_instance.get_invoice_by_id_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_invoice_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to return |  |

### Return type

[**GetInvoices200Response**](GetInvoices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoice_positions_by_id

> <GetInvoicePositionsById200Response> get_invoice_positions_by_id(invoice_id, opts)

Find invoice positions

Returns all positions of an invoice

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to return the positions
opts = {
  limit: 56, # Integer | limits the number of entries returned
  offset: 56, # Integer | set the index where the returned entries start
  embed: ['inner_example'] # Array<String> | Get some additional information. Embed can handle multiple values, they must be separated by comma.
}

begin
  # Find invoice positions
  result = api_instance.get_invoice_positions_by_id(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_invoice_positions_by_id: #{e}"
end
```

#### Using the get_invoice_positions_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoicePositionsById200Response>, Integer, Hash)> get_invoice_positions_by_id_with_http_info(invoice_id, opts)

```ruby
begin
  # Find invoice positions
  data, status_code, headers = api_instance.get_invoice_positions_by_id_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoicePositionsById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_invoice_positions_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to return the positions |  |
| **limit** | **Integer** | limits the number of entries returned | [optional] |
| **offset** | **Integer** | set the index where the returned entries start | [optional] |
| **embed** | [**Array&lt;String&gt;**](String.md) | Get some additional information. Embed can handle multiple values, they must be separated by comma. | [optional] |

### Return type

[**GetInvoicePositionsById200Response**](GetInvoicePositionsById200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invoices

> <GetInvoices200Response> get_invoices(opts)

Retrieve invoices

There are a multitude of parameter which can be used to filter. A few of them are attached but       for a complete list please check out <a href='#tag/Invoice/How-to-filter-for-certain-invoices'>this</a> list

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

api_instance = OpenapiClient::InvoiceApi.new
opts = {
  status: 100, # Float | Status of the invoices
  invoice_number: 'invoice_number_example', # String | Retrieve all invoices with this invoice number
  start_date: 56, # Integer | Retrieve all invoices with a date equal or higher
  end_date: 56, # Integer | Retrieve all invoices with a date equal or lower
  contact_id: 56, # Integer | Retrieve all invoices with this contact. Must be provided with contact[objectName]
  contact_object_name: 'contact_object_name_example' # String | Only required if contact[id] was provided. 'Contact' should be used as value.
}

begin
  # Retrieve invoices
  result = api_instance.get_invoices(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_invoices: #{e}"
end
```

#### Using the get_invoices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInvoices200Response>, Integer, Hash)> get_invoices_with_http_info(opts)

```ruby
begin
  # Retrieve invoices
  data, status_code, headers = api_instance.get_invoices_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInvoices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_invoices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Float** | Status of the invoices | [optional] |
| **invoice_number** | **String** | Retrieve all invoices with this invoice number | [optional] |
| **start_date** | **Integer** | Retrieve all invoices with a date equal or higher | [optional] |
| **end_date** | **Integer** | Retrieve all invoices with a date equal or lower | [optional] |
| **contact_id** | **Integer** | Retrieve all invoices with this contact. Must be provided with contact[objectName] | [optional] |
| **contact_object_name** | **String** | Only required if contact[id] was provided. &#39;Contact&#39; should be used as value. | [optional] |

### Return type

[**GetInvoices200Response**](GetInvoices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_is_invoice_partially_paid

> <ContactCustomerNumberAvailabilityCheck200Response> get_is_invoice_partially_paid(invoice_id)

Check if an invoice is already partially paid

Returns 'true' if the given invoice is partially paid - 'false' if it is not.      Invoices which are completely paid are regarded as not partially paid.

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to return

begin
  # Check if an invoice is already partially paid
  result = api_instance.get_is_invoice_partially_paid(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_is_invoice_partially_paid: #{e}"
end
```

#### Using the get_is_invoice_partially_paid_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactCustomerNumberAvailabilityCheck200Response>, Integer, Hash)> get_is_invoice_partially_paid_with_http_info(invoice_id)

```ruby
begin
  # Check if an invoice is already partially paid
  data, status_code, headers = api_instance.get_is_invoice_partially_paid_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactCustomerNumberAvailabilityCheck200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->get_is_invoice_partially_paid_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to return |  |

### Return type

[**ContactCustomerNumberAvailabilityCheck200Response**](ContactCustomerNumberAvailabilityCheck200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_enshrine

> <CheckAccountTransactionEnshrine200Response> invoice_enshrine(invoice_id)

Enshrine

Sets the current date and time as a value for the property `enshrined`.<br> This operation is only possible if the status is \"Open\" (`\"status\": \"200\"`) or higher.  Enshrined invoices cannot be changed. This operation cannot be undone. 

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of the invoice to enshrine

begin
  # Enshrine
  result = api_instance.invoice_enshrine(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_enshrine: #{e}"
end
```

#### Using the invoice_enshrine_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckAccountTransactionEnshrine200Response>, Integer, Hash)> invoice_enshrine_with_http_info(invoice_id)

```ruby
begin
  # Enshrine
  data, status_code, headers = api_instance.invoice_enshrine_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckAccountTransactionEnshrine200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_enshrine_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of the invoice to enshrine |  |

### Return type

[**CheckAccountTransactionEnshrine200Response**](CheckAccountTransactionEnshrine200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_get_pdf

> <InvoiceGetPdf200Response> invoice_get_pdf(invoice_id, opts)

Retrieve pdf document of an invoice

Retrieves the pdf document of an invoice with additional metadata.

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice from which you want the pdf
opts = {
  download: true, # Boolean | If u want to download the pdf of the invoice.
  prevent_send_by: true # Boolean | Defines if u want to send the invoice.
}

begin
  # Retrieve pdf document of an invoice
  result = api_instance.invoice_get_pdf(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_get_pdf: #{e}"
end
```

#### Using the invoice_get_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceGetPdf200Response>, Integer, Hash)> invoice_get_pdf_with_http_info(invoice_id, opts)

```ruby
begin
  # Retrieve pdf document of an invoice
  data, status_code, headers = api_instance.invoice_get_pdf_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceGetPdf200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_get_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice from which you want the pdf |  |
| **download** | **Boolean** | If u want to download the pdf of the invoice. | [optional] |
| **prevent_send_by** | **Boolean** | Defines if u want to send the invoice. | [optional] |

### Return type

[**InvoiceGetPdf200Response**](InvoiceGetPdf200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_get_xml

> <InvoiceGetXml200Response> invoice_get_xml(invoice_id)

Retrieve XML of an e-invoice

Retrieves the XML of an e-invoice

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice from which you want the XML

begin
  # Retrieve XML of an e-invoice
  result = api_instance.invoice_get_xml(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_get_xml: #{e}"
end
```

#### Using the invoice_get_xml_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceGetXml200Response>, Integer, Hash)> invoice_get_xml_with_http_info(invoice_id)

```ruby
begin
  # Retrieve XML of an e-invoice
  data, status_code, headers = api_instance.invoice_get_xml_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceGetXml200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_get_xml_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice from which you want the XML |  |

### Return type

[**InvoiceGetXml200Response**](InvoiceGetXml200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_render

> <InvoiceRender201Response> invoice_render(invoice_id, opts)

Render the pdf document of an invoice

Using this endpoint you can render the pdf document of an invoice.<br>       Use cases for this are the retrieval of the pdf location or the forceful re-render of a already sent invoice.<br>       Please be aware that changing an invoice after it has been sent to a customer is not an allowed bookkeeping process.

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to render
opts = {
  invoice_render_request: OpenapiClient::InvoiceRenderRequest.new # InvoiceRenderRequest | Define if the document should be forcefully re-rendered.
}

begin
  # Render the pdf document of an invoice
  result = api_instance.invoice_render(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_render: #{e}"
end
```

#### Using the invoice_render_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceRender201Response>, Integer, Hash)> invoice_render_with_http_info(invoice_id, opts)

```ruby
begin
  # Render the pdf document of an invoice
  data, status_code, headers = api_instance.invoice_render_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceRender201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_render_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to render |  |
| **invoice_render_request** | [**InvoiceRenderRequest**](InvoiceRenderRequest.md) | Define if the document should be forcefully re-rendered. | [optional] |

### Return type

[**InvoiceRender201Response**](InvoiceRender201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invoice_reset_to_draft

> <InvoiceResetToDraft200Response> invoice_reset_to_draft(invoice_id)

Reset status to draft

Resets the status to \"Draft\" (`\"status\": \"100\"`).<br> This is only possible if the invoice has the status \"Open\" (`\"status\": \"200\"`).<br> If it has a higher status use [Invoice/{invoiceId}/resetToOpen](#tag/Invoice/operation/invoiceResetToOpen) first.  This endpoint cannot be used for recurring invoices (`\"invoiceType\": \"WKR\"`).<br> Use [Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory) instead. 

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of the invoice to reset

begin
  # Reset status to draft
  result = api_instance.invoice_reset_to_draft(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_reset_to_draft: #{e}"
end
```

#### Using the invoice_reset_to_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceResetToDraft200Response>, Integer, Hash)> invoice_reset_to_draft_with_http_info(invoice_id)

```ruby
begin
  # Reset status to draft
  data, status_code, headers = api_instance.invoice_reset_to_draft_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceResetToDraft200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_reset_to_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of the invoice to reset |  |

### Return type

[**InvoiceResetToDraft200Response**](InvoiceResetToDraft200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_reset_to_open

> <InvoiceResetToOpen200Response> invoice_reset_to_open(invoice_id)

Reset status to open

Resets the status \"Open\" (`\"status\": \"200\"`). Linked transactions will be unlinked.<br> This is not possible if the invoice itself or one of its transactions (CheckAccountTransaction) is already enshrined.  This endpoint cannot be used to increase the status to \"Open\" (`\"status\": \"200\"`).<br> Use [Invoice/{invoiceId}/sendBy](#tag/Invoice/operation/invoiceSendBy) / [Invoice/{invoiceId}/sendViaEmail](#tag/Invoice/operation/sendInvoiceViaEMail) instead.  This endpoint cannot be used for recurring invoices (`\"invoiceType\": \"WKR\"`). Use [Invoice/Factory/saveInvoice](#tag/Invoice/operation/createInvoiceByFactory) instead. 

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of the invoice to reset

begin
  # Reset status to open
  result = api_instance.invoice_reset_to_open(invoice_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_reset_to_open: #{e}"
end
```

#### Using the invoice_reset_to_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InvoiceResetToOpen200Response>, Integer, Hash)> invoice_reset_to_open_with_http_info(invoice_id)

```ruby
begin
  # Reset status to open
  data, status_code, headers = api_instance.invoice_reset_to_open_with_http_info(invoice_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InvoiceResetToOpen200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_reset_to_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of the invoice to reset |  |

### Return type

[**InvoiceResetToOpen200Response**](InvoiceResetToOpen200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_send_by

> <ModelInvoiceResponse> invoice_send_by(invoice_id, opts)

Mark invoice as sent

Marks an invoice as sent by a chosen send type.

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to mark as sent
opts = {
  invoice_send_by_request: OpenapiClient::InvoiceSendByRequest.new({send_type: 'VPR', send_draft: false}) # InvoiceSendByRequest | Specify the send type
}

begin
  # Mark invoice as sent
  result = api_instance.invoice_send_by(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_send_by: #{e}"
end
```

#### Using the invoice_send_by_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelInvoiceResponse>, Integer, Hash)> invoice_send_by_with_http_info(invoice_id, opts)

```ruby
begin
  # Mark invoice as sent
  data, status_code, headers = api_instance.invoice_send_by_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelInvoiceResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->invoice_send_by_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to mark as sent |  |
| **invoice_send_by_request** | [**InvoiceSendByRequest**](InvoiceSendByRequest.md) | Specify the send type | [optional] |

### Return type

[**ModelInvoiceResponse**](ModelInvoiceResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_invoice_via_e_mail

> <ModelEmail> send_invoice_via_e_mail(invoice_id, opts)

Send invoice via email

This endpoint sends the specified invoice to a customer via email.<br>      This will automatically mark the invoice as sent.<br>      Please note, that in production an invoice is not allowed to be changed after this happened!

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

api_instance = OpenapiClient::InvoiceApi.new
invoice_id = 56 # Integer | ID of invoice to be sent via email
opts = {
  send_invoice_via_e_mail_request: OpenapiClient::SendInvoiceViaEMailRequest.new({to_email: 'to_email_example', subject: 'subject_example', text: 'text_example'}) # SendInvoiceViaEMailRequest | Mail data
}

begin
  # Send invoice via email
  result = api_instance.send_invoice_via_e_mail(invoice_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->send_invoice_via_e_mail: #{e}"
end
```

#### Using the send_invoice_via_e_mail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelEmail>, Integer, Hash)> send_invoice_via_e_mail_with_http_info(invoice_id, opts)

```ruby
begin
  # Send invoice via email
  data, status_code, headers = api_instance.send_invoice_via_e_mail_with_http_info(invoice_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelEmail>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvoiceApi->send_invoice_via_e_mail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_id** | **Integer** | ID of invoice to be sent via email |  |
| **send_invoice_via_e_mail_request** | [**SendInvoiceViaEMailRequest**](SendInvoiceViaEMailRequest.md) | Mail data | [optional] |

### Return type

[**ModelEmail**](ModelEmail.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

