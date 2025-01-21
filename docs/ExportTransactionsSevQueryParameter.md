# OpenapiClient::ExportTransactionsSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name, which is &#39;CheckAccountTransaction&#39; |  |
| **object_name** | **Object** | Model name, which is &#39;SevQuery&#39; |  |
| **filter** | [**ExportTransactionsSevQueryParameterFilter**](ExportTransactionsSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportTransactionsSevQueryParameter.new(
  limit: 999999,
  model_name: CheckAccountTransaction,
  object_name: SevQuery,
  filter: null
)
```

