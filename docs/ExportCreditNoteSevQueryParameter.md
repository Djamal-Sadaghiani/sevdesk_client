# OpenapiClient::ExportCreditNoteSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name, which is &#39;CreditNote&#39; |  |
| **object_name** | **Object** | Model name, which is &#39;SevQuery&#39; |  |
| **filter** | [**ExportCreditNoteSevQueryParameterFilter**](ExportCreditNoteSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportCreditNoteSevQueryParameter.new(
  limit: 999999,
  model_name: CreditNote,
  object_name: SevQuery,
  filter: null
)
```

