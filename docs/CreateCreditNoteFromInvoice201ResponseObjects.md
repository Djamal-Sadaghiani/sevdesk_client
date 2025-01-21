# OpenapiClient::CreateCreditNoteFromInvoice201ResponseObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note** | [**ModelCreditNoteResponse**](ModelCreditNoteResponse.md) |  | [optional] |
| **credit_note_pos** | [**Array&lt;ModelCreditNotePosResponse&gt;**](ModelCreditNotePosResponse.md) | An array of creditNote positions | [optional] |
| **discount** | [**Array&lt;ModelDiscountsResponse&gt;**](ModelDiscountsResponse.md) | An array of discounts (can be empty) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateCreditNoteFromInvoice201ResponseObjects.new(
  credit_note: null,
  credit_note_pos: null,
  discount: null
)
```

