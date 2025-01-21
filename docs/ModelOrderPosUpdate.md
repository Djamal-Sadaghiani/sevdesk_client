# OpenapiClient::ModelOrderPosUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The order position id | [optional][readonly] |
| **object_name** | **String** | The order position object name | [optional][readonly] |
| **create** | **Time** | Date of order position creation | [optional][readonly] |
| **update** | **Time** | Date of last order position update | [optional][readonly] |
| **order** | [**ModelOrderPosOrder**](ModelOrderPosOrder.md) |  | [optional] |
| **part** | [**ModelCreditNotePosPart**](ModelCreditNotePosPart.md) |  | [optional] |
| **quantity** | **Float** | Quantity of the article/part | [optional] |
| **price** | **Float** | Price of the article/part. Is either gross or net, depending on the sevdesk account setting. | [optional] |
| **price_net** | **Float** | Net price of the part | [optional][readonly] |
| **price_tax** | **Float** | Tax on the price of the part | [optional] |
| **price_gross** | **Float** | Gross price of the part | [optional] |
| **name** | **String** | Name of the article/part. | [optional] |
| **unity** | [**ModelCreditNotePosUnity**](ModelCreditNotePosUnity.md) |  | [optional] |
| **sev_client** | [**ModelOrderPosSevClient**](ModelOrderPosSevClient.md) |  | [optional] |
| **position_number** | **Integer** | Position number of your position. Can be used to order multiple positions. | [optional] |
| **text** | **String** | A text describing your position. | [optional] |
| **discount** | **Float** | An optional discount of the position. | [optional] |
| **optional** | **Boolean** | Defines if the position is optional. | [optional] |
| **tax_rate** | **Float** | Tax rate of the position. | [optional] |
| **sum_discount** | **Float** | Discount sum of the position | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelOrderPosUpdate.new(
  id: null,
  object_name: OrderPos,
  create: null,
  update: null,
  order: null,
  part: null,
  quantity: 1,
  price: 100,
  price_net: null,
  price_tax: null,
  price_gross: null,
  name: Dragonglass,
  unity: null,
  sev_client: null,
  position_number: 1,
  text: null,
  discount: null,
  optional: null,
  tax_rate: 19,
  sum_discount: null
)
```

