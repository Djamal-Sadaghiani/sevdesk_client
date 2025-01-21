# OpenapiClient::SaveCreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_note** | [**ModelCreditNote**](ModelCreditNote.md) |  |  |
| **credit_note_pos_save** | [**Array&lt;ModelCreditNotePos&gt;**](ModelCreditNotePos.md) |  | [optional] |
| **credit_note_pos_delete** | [**SaveCreditNoteCreditNotePosDelete**](SaveCreditNoteCreditNotePosDelete.md) |  | [optional] |
| **discount_save** | [**SaveCreditNoteDiscountSave**](SaveCreditNoteDiscountSave.md) |  | [optional] |
| **discount_delete** | [**SaveCreditNoteDiscountDelete**](SaveCreditNoteDiscountDelete.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveCreditNote.new(
  credit_note: null,
  credit_note_pos_save: null,
  credit_note_pos_delete: null,
  discount_save: null,
  discount_delete: null
)
```

