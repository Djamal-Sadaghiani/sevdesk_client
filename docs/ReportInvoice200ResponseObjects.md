# OpenapiClient::ReportInvoice200ResponseObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** |  | [optional] |
| **mimetype** | **String** |  | [optional] |
| **base64_encoded** | **Boolean** |  | [optional] |
| **content** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportInvoice200ResponseObjects.new(
  filename: invoice.pdf,
  mimetype: application/pdf,
  base64_encoded: true,
  content: null
)
```

