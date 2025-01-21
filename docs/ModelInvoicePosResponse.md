# OpenapiClient::ModelInvoicePosResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The invoice position id | [optional][readonly] |
| **object_name** | **String** | The invoice position object name | [optional][readonly] |
| **create** | **Time** | Date of invoice position creation | [optional][readonly] |
| **update** | **Time** | Date of last invoice position update | [optional][readonly] |
| **invoice** | [**ModelInvoicePosResponseInvoice**](ModelInvoicePosResponseInvoice.md) |  | [optional] |
| **part** | [**ModelInvoicePosResponsePart**](ModelInvoicePosResponsePart.md) |  | [optional] |
| **quantity** | **Boolean** | Quantity of the article/part | [optional][readonly] |
| **price** | **String** | Price of the article/part. Is either gross or net, depending on the sevdesk account setting. | [optional][readonly] |
| **name** | **String** | Name of the article/part. | [optional][readonly] |
| **unity** | [**ModelInvoicePosResponseUnity**](ModelInvoicePosResponseUnity.md) |  | [optional] |
| **sev_client** | [**ModelInvoicePosResponseSevClient**](ModelInvoicePosResponseSevClient.md) |  | [optional] |
| **position_number** | **String** | Position number of your position. Can be used to order multiple positions. | [optional][readonly] |
| **text** | **String** | A text describing your position. | [optional][readonly] |
| **discount** | **String** | An optional discount of the position. | [optional][readonly] |
| **tax_rate** | **String** | Tax rate of the position. | [optional][readonly] |
| **sum_discount** | **String** | Discount sum of the position | [optional][readonly] |
| **sum_net_accounting** | **String** | Net accounting sum of the position | [optional][readonly] |
| **sum_tax_accounting** | **String** | Tax accounting sum of the position | [optional][readonly] |
| **sum_gross_accounting** | **String** | Gross accounting sum of the position | [optional][readonly] |
| **price_net** | **String** | Net price of the part | [optional][readonly] |
| **price_gross** | **String** | Gross price of the part | [optional][readonly] |
| **price_tax** | **String** | Tax on the price of the part | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelInvoicePosResponse.new(
  id: null,
  object_name: InvoicePos,
  create: null,
  update: null,
  invoice: null,
  part: null,
  quantity: true,
  price: 100,
  name: Dragonglass,
  unity: null,
  sev_client: null,
  position_number: 0,
  text: null,
  discount: 0,
  tax_rate: 19,
  sum_discount: 0,
  sum_net_accounting: 0,
  sum_tax_accounting: 0,
  sum_gross_accounting: 0,
  price_net: 0,
  price_gross: 100,
  price_tax: 0
)
```

