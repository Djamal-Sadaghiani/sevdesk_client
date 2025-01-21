# OpenapiClient::ModelInvoicePos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The invoice position id. &lt;span style&#x3D;&#39;color:red&#39;&gt;Required&lt;/span&gt; if you want to update an invoice position for an existing invoice | [optional] |
| **object_name** | **String** | The invoice position object name |  |
| **map_all** | **Boolean** |  |  |
| **create** | **Time** | Date of invoice position creation | [optional][readonly] |
| **update** | **Time** | Date of last invoice position update | [optional][readonly] |
| **invoice** | [**ModelInvoicePosInvoice**](ModelInvoicePosInvoice.md) |  | [optional] |
| **part** | [**ModelCreditNotePosPart**](ModelCreditNotePosPart.md) |  | [optional] |
| **quantity** | **Float** | Quantity of the article/part |  |
| **price** | **Float** | Price of the article/part. Is either gross or net, depending on the sevdesk account setting. | [optional] |
| **name** | **String** | Name of the article/part. | [optional] |
| **unity** | [**ModelInvoicePosUnity**](ModelInvoicePosUnity.md) |  |  |
| **sev_client** | [**ModelInvoicePosSevClient**](ModelInvoicePosSevClient.md) |  | [optional] |
| **position_number** | **Integer** | Position number of your position. Can be used to order multiple positions. | [optional] |
| **text** | **String** | A text describing your position. | [optional] |
| **discount** | **Float** | An optional discount of the position. | [optional] |
| **tax_rate** | **Float** | Tax rate of the position. |  |
| **sum_discount** | **Float** | Discount sum of the position | [optional][readonly] |
| **sum_net_accounting** | **Float** | Net accounting sum of the position | [optional][readonly] |
| **sum_tax_accounting** | **Float** | Tax accounting sum of the position | [optional][readonly] |
| **sum_gross_accounting** | **Float** | Gross accounting sum of the position | [optional][readonly] |
| **price_net** | **Float** | Net price of the part | [optional][readonly] |
| **price_gross** | **Float** | Gross price of the part | [optional] |
| **price_tax** | **Float** | Tax on the price of the part | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelInvoicePos.new(
  id: null,
  object_name: InvoicePos,
  map_all: null,
  create: null,
  update: null,
  invoice: null,
  part: null,
  quantity: 1,
  price: 100,
  name: Dragonglass,
  unity: null,
  sev_client: null,
  position_number: null,
  text: null,
  discount: null,
  tax_rate: 19,
  sum_discount: null,
  sum_net_accounting: null,
  sum_tax_accounting: null,
  sum_gross_accounting: null,
  price_net: null,
  price_gross: 100,
  price_tax: null
)
```

