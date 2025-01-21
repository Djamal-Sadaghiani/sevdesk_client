# OpenapiClient::ReportVoucherSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name which is exported |  |
| **object_name** | **Object** | SevQuery object name |  |
| **filter** | [**ExportVoucherSevQueryParameterFilter**](ExportVoucherSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportVoucherSevQueryParameter.new(
  limit: 999999,
  model_name: Voucher,
  object_name: SevQuery,
  filter: null
)
```

