# OpenapiClient::ExportInvoiceZip200ResponseObjects

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

instance = OpenapiClient::ExportInvoiceZip200ResponseObjects.new(
  filename: Rechnungen_19.04.23.zip,
  mimetype: application/zip,
  base64_encoded: true,
  content: null
)
```

