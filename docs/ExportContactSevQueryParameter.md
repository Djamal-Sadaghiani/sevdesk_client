# OpenapiClient::ExportContactSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name, which is &#39;Contact&#39; |  |
| **object_name** | **Object** | Model name, which is &#39;SevQuery&#39; |  |
| **filter** | [**ExportContactSevQueryParameterFilter**](ExportContactSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportContactSevQueryParameter.new(
  limit: 999999,
  model_name: Contact,
  object_name: SevQuery,
  filter: null
)
```

