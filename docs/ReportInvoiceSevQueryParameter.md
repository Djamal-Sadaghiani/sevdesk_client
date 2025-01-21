# OpenapiClient::ReportInvoiceSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name which is exported |  |
| **object_name** | **Object** | SevQuery object name |  |
| **filter** | [**ExportInvoiceSevQueryParameterFilter**](ExportInvoiceSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportInvoiceSevQueryParameter.new(
  limit: 999999,
  model_name: Invoice,
  object_name: SevQuery,
  filter: null
)
```

