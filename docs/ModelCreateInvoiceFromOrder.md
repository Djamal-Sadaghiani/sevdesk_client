# OpenapiClient::ModelCreateInvoiceFromOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**ModelCreateInvoiceFromOrderOrder**](ModelCreateInvoiceFromOrderOrder.md) |  |  |
| **type** | **String** | defines the type of amount | [optional] |
| **amount** | **Float** | Amount which has already been paid for this Invoice | [optional] |
| **partial_type** | **String** | defines the type of the invoice 1. RE - Schlussrechnung 2. TR - Teilrechnung 3. AR - Abschlagsrechnung | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCreateInvoiceFromOrder.new(
  order: null,
  type: null,
  amount: 100,
  partial_type: null
)
```

