# OpenapiClient::ModelCreditNotePos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The creditNote position id. | [optional][readonly] |
| **object_name** | **String** | The creditNote position object name |  |
| **map_all** | **Boolean** |  |  |
| **create** | **String** | Date of creditNote position creation | [optional][readonly] |
| **update** | **String** | Date of last creditNote position update | [optional][readonly] |
| **credit_note** | [**ModelCreditNotePosCreditNote**](ModelCreditNotePosCreditNote.md) |  | [optional] |
| **part** | [**ModelCreditNotePosPart**](ModelCreditNotePosPart.md) |  | [optional] |
| **quantity** | **Float** | Quantity of the article/part |  |
| **price** | **Float** | Price of the article/part. Is either gross or net, depending on the sevdesk account setting. | [optional] |
| **price_net** | **Float** | Net price of the part | [optional][readonly] |
| **price_tax** | **Float** | Tax on the price of the part | [optional] |
| **price_gross** | **Float** | Gross price of the part | [optional] |
| **name** | **String** | Name of the article/part. | [optional] |
| **unity** | [**ModelCreditNotePosUnity**](ModelCreditNotePosUnity.md) |  |  |
| **sev_client** | [**ModelCreditNotePosSevClient**](ModelCreditNotePosSevClient.md) |  | [optional] |
| **position_number** | **Integer** | Position number of your position. Can be used to creditNote multiple positions. | [optional] |
| **text** | **String** | A text describing your position. | [optional] |
| **discount** | **Float** | An optional discount of the position. | [optional] |
| **optional** | **Boolean** | Defines if the position is optional. | [optional] |
| **tax_rate** | **Float** | Tax rate of the position. |  |
| **sum_discount** | **Float** | Discount sum of the position | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCreditNotePos.new(
  id: null,
  object_name: CreditNotePos,
  map_all: null,
  create: 2023-04-18T15:45:38+02:00,
  update: 2023-04-18T15:45:38+02:00,
  credit_note: null,
  part: null,
  quantity: 1,
  price: 100,
  price_net: null,
  price_tax: 19,
  price_gross: 119,
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

