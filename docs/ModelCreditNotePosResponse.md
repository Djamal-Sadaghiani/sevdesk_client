# OpenapiClient::ModelCreditNotePosResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The creditNote position id | [optional][readonly] |
| **object_name** | **String** | The creditNote position object name | [optional][readonly] |
| **create** | **String** | Date of creditNote position creation | [optional][readonly] |
| **update** | **String** | Date of last creditNote position update | [optional][readonly] |
| **credit_note** | [**ModelCreditNotePosResponseCreditNote**](ModelCreditNotePosResponseCreditNote.md) |  |  |
| **part** | [**ModelCreditNotePosResponsePart**](ModelCreditNotePosResponsePart.md) |  | [optional] |
| **quantity** | **String** | Quantity of the article/part |  |
| **price** | **String** | Price of the article/part. Is either gross or net, depending on the sevdesk account setting. | [optional] |
| **price_net** | **String** | Net price of the part | [optional][readonly] |
| **price_tax** | **String** | Tax on the price of the part | [optional] |
| **price_gross** | **String** | Gross price of the part | [optional] |
| **name** | **String** | Name of the article/part. | [optional] |
| **unity** | [**ModelCreditNotePosResponseUnity**](ModelCreditNotePosResponseUnity.md) |  |  |
| **sev_client** | [**ModelCreditNotePosResponseSevClient**](ModelCreditNotePosResponseSevClient.md) |  | [optional] |
| **position_number** | **String** | Position number of your position. Can be used to creditNote multiple positions. | [optional] |
| **text** | **String** | A text describing your position. | [optional] |
| **discount** | **String** | An optional discount of the position. | [optional] |
| **optional** | **Boolean** | Defines if the position is optional. | [optional] |
| **tax_rate** | **String** | Tax rate of the position. |  |
| **sum_discount** | **String** | Discount sum of the position | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCreditNotePosResponse.new(
  id: 1,
  object_name: CreditNotePos,
  create: 2023-04-18T15:45:38+02:00,
  update: 2023-04-18T15:45:38+02:00,
  credit_note: null,
  part: null,
  quantity: 1,
  price: 100,
  price_net: 100,
  price_tax: 19,
  price_gross: 119,
  name: Dragonglass,
  unity: null,
  sev_client: null,
  position_number: 1,
  text: null,
  discount: 0,
  optional: null,
  tax_rate: 19,
  sum_discount: 0
)
```

