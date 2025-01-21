# OpenapiClient::BookInvoice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **object_name** | **String** |  | [optional] |
| **additional_information** | **String** |  | [optional] |
| **create** | **Time** | Date of email creation | [optional] |
| **credit_note** | [**BookInvoice200ResponseCreditNote**](BookInvoice200ResponseCreditNote.md) |  | [optional] |
| **from_status** | **String** |  | [optional] |
| **to_status** | **String** |  | [optional] |
| **ammount_payed** | **String** |  | [optional] |
| **booking_date** | **Time** |  | [optional] |
| **sev_client** | [**BookInvoice200ResponseSevClient**](BookInvoice200ResponseSevClient.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BookInvoice200Response.new(
  id: 2,
  object_name: InvoiceLog,
  additional_information: null,
  create: 2023-04-18T15:45:38+02:00,
  credit_note: null,
  from_status: 200,
  to_status: 1000,
  ammount_payed: 0,
  booking_date: 2023-04-18T15:45:38+02:00,
  sev_client: null
)
```

