# OpenapiClient::SaveInvoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice** | [**ModelInvoice**](ModelInvoice.md) |  |  |
| **invoice_pos_save** | [**Array&lt;ModelInvoicePos&gt;**](ModelInvoicePos.md) |  | [optional] |
| **invoice_pos_delete** | [**SaveInvoiceInvoicePosDelete**](SaveInvoiceInvoicePosDelete.md) |  | [optional] |
| **filename** | **File** | Filename of a previously upload file which should be attached. | [optional] |
| **discount_save** | [**Array&lt;SaveInvoiceDiscountSaveInner&gt;**](SaveInvoiceDiscountSaveInner.md) |  | [optional] |
| **discount_delete** | [**SaveInvoiceDiscountDelete**](SaveInvoiceDiscountDelete.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveInvoice.new(
  invoice: null,
  invoice_pos_save: null,
  invoice_pos_delete: null,
  filename: null,
  discount_save: null,
  discount_delete: null
)
```

