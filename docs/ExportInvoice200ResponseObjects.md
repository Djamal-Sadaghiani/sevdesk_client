# OpenapiClient::ExportInvoice200ResponseObjects

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

instance = OpenapiClient::ExportInvoice200ResponseObjects.new(
  filename: invoices.csv,
  mimetype: text/csv,
  base64_encoded: true,
  content: null
)
```

