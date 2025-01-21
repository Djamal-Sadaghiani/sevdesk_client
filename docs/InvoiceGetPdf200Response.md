# OpenapiClient::InvoiceGetPdf200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** |  | [optional] |
| **mime_type** | **String** |  | [optional] |
| **base64encoded** | **Boolean** |  | [optional] |
| **content** | **File** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceGetPdf200Response.new(
  filename: RE-101.pdf,
  mime_type: application/pdf,
  base64encoded: true,
  content: null
)
```

