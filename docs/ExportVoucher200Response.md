# OpenapiClient::ExportVoucher200Response

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

instance = OpenapiClient::ExportVoucher200Response.new(
  filename: Gutschrift_19.04.23.zip,
  mimetype: application/zip,
  base64_encoded: true,
  content: null
)
```

