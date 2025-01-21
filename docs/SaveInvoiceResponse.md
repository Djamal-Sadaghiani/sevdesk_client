# OpenapiClient::SaveInvoiceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice** | [**ModelInvoiceResponse**](ModelInvoiceResponse.md) |  | [optional] |
| **invoice_pos** | [**Array&lt;ModelInvoicePosResponse&gt;**](ModelInvoicePosResponse.md) |  | [optional] |
| **filename** | **File** | Filename of a previously upload file which should be attached. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveInvoiceResponse.new(
  invoice: null,
  invoice_pos: null,
  filename: null
)
```

