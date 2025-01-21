# OpenapiClient::ExportTransactions200ResponseObjects

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

instance = OpenapiClient::ExportTransactions200ResponseObjects.new(
  filename: transaction.csv,
  mimetype: text/csv,
  base64_encoded: true,
  content: null
)
```

