# OpenapiClient::ModelOrderPosResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The order position id | [optional][readonly] |
| **object_name** | **String** | The order position object name | [optional][readonly] |
| **create** | **Time** | Date of order position creation | [optional][readonly] |
| **update** | **Time** | Date of last order position update | [optional][readonly] |
| **order** | [**ModelOrderPosResponseOrder**](ModelOrderPosResponseOrder.md) |  | [optional] |
| **part** | [**ModelOrderPosResponsePart**](ModelOrderPosResponsePart.md) |  | [optional] |
| **quantity** | **String** | Quantity of the article/part | [optional] |
| **price** | **String** | Price of the article/part. Is either gross or net, depending on the sevdesk account setting. | [optional] |
| **price_net** | **String** | Net price of the part | [optional][readonly] |
| **price_tax** | **String** | Tax on the price of the part | [optional] |
| **price_gross** | **String** | Gross price of the part | [optional] |
| **name** | **String** | Name of the article/part. | [optional] |
| **unity** | [**ModelOrderPosResponseUnity**](ModelOrderPosResponseUnity.md) |  | [optional] |
| **sev_client** | [**ModelOrderPosResponseSevClient**](ModelOrderPosResponseSevClient.md) |  | [optional] |
| **position_number** | **String** | Position number of your position. Can be used to order multiple positions. | [optional] |
| **text** | **String** | A text describing your position. | [optional] |
| **discount** | **String** | An optional discount of the position. | [optional] |
| **optional** | **Boolean** | Defines if the position is optional. | [optional] |
| **tax_rate** | **String** | Tax rate of the position. | [optional] |
| **sum_discount** | **String** | Discount sum of the position | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelOrderPosResponse.new(
  id: 0,
  object_name: OrderPos,
  create: null,
  update: null,
  order: null,
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
  discount: null,
  optional: null,
  tax_rate: 19,
  sum_discount: null
)
```

