# OpenapiClient::ReceiptGuideDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_datev_id** | **Integer** | The ID of the matching account datev | [optional] |
| **account_number** | **String** | The account number of the account datev (dependent on the active accounting system of the client) | [optional] |
| **account_name** | **String** | The name of the account | [optional] |
| **description** | **String** | The description of the account and/or what the account is used for | [optional] |
| **allowed_tax_rules** | [**Array&lt;ReceiptGuideDtoAllowedTaxRulesInner&gt;**](ReceiptGuideDtoAllowedTaxRulesInner.md) | An array that holds all possible tax rules for this account | [optional] |
| **allowed_receipt_types** | **Array&lt;String&gt;** | An array that holds the viable receipt types for this account | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReceiptGuideDto.new(
  account_datev_id: null,
  account_number: 4000,
  account_name: Umsatzerlöse,
  description: Einnahmen aus dem Verkauf von Waren und Dienstleistungen,
  allowed_tax_rules: null,
  allowed_receipt_types: [&quot;EXPENSE&quot;]
)
```

