# OpenapiClient::ExportVoucherSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name, which is &#39;Voucher&#39; |  |
| **object_name** | **Object** | Model name, which is &#39;SevQuery&#39; |  |
| **filter** | [**ExportVoucherSevQueryParameterFilter**](ExportVoucherSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportVoucherSevQueryParameter.new(
  limit: 999999,
  model_name: Voucher,
  object_name: SevQuery,
  filter: null
)
```

