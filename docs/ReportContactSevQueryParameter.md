# OpenapiClient::ReportContactSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name which is exported |  |
| **object_name** | **Object** | SevQuery object name |  |
| **filter** | [**ExportContactSevQueryParameterFilter**](ExportContactSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportContactSevQueryParameter.new(
  limit: 999999,
  model_name: Contact,
  object_name: SevQuery,
  filter: null
)
```

