# OpenapiClient::ExportInvoiceZipSevQueryParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Limit export | [optional] |
| **model_name** | **Object** | Model name, which is &#39;Invoice&#39; |  |
| **object_name** | **Object** | Model name, which is &#39;SevQuery&#39; |  |
| **filter** | [**ExportInvoiceSevQueryParameterFilter**](ExportInvoiceSevQueryParameterFilter.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportInvoiceZipSevQueryParameter.new(
  limit: 999999,
  model_name: null,
  object_name: SevQuery,
  filter: null
)
```

