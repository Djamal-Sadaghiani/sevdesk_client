# OpenapiClient::ReceiptGuideDtoAllowedTaxRulesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the tax rule | [optional] |
| **description** | **String** | A readable description of the tax rule | [optional] |
| **id** | **Integer** | The id of the tax rule to use in different scenarios | [optional] |
| **tax_rates** | **Array&lt;String&gt;** | An array of tax rates which are combinable with this tax rule | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReceiptGuideDtoAllowedTaxRulesInner.new(
  name: USTPFL_UMS_EINN,
  description: Umsatzsteuerpflichtige Umsätze,
  id: 1,
  tax_rates: [&quot;ZERO&quot;,&quot;SEVEN&quot;,&quot;NINETEEN&quot;]
)
```

