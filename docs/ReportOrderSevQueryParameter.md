# OpenapiClient::ReportOrderSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name which is exported |  |
| **object_name** | **Object** | SevQuery object name |  |
| **filter** | [**ReportOrderSevQueryParameterFilter**](ReportOrderSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportOrderSevQueryParameter.new(
  limit: 999999,
  model_name: Order,
  object_name: SevQuery,
  filter: null
)
```

