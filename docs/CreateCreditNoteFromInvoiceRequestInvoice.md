# OpenapiClient::CreateCreditNoteFromInvoiceRequestInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the existing invoice |  |
| **object_name** | **String** | The objectName must be &#39;Invoice&#39; |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateCreditNoteFromInvoiceRequestInvoice.new(
  id: 1234,
  object_name: Invoice
)
```

