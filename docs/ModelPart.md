# OpenapiClient::ModelPart

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The part id | [optional][readonly] |
| **object_name** | **String** | The part object name | [optional][readonly] |
| **create** | **Time** | Date of part creation | [optional][readonly] |
| **update** | **Time** | Date of last part update | [optional][readonly] |
| **name** | **String** | Name of the part |  |
| **part_number** | **String** | The part number |  |
| **text** | **String** | A text describing the part | [optional] |
| **category** | [**ModelPartCategory**](ModelPartCategory.md) |  | [optional] |
| **stock** | **Float** | The stock of the part |  |
| **stock_enabled** | **Boolean** | Defines if the stock should be enabled | [optional] |
| **unity** | [**ModelPartUnity**](ModelPartUnity.md) |  |  |
| **price** | **Float** | Net price for which the part is sold. we will change this parameter so that the gross price is calculated automatically, until then the priceGross parameter must be used. | [optional] |
| **price_net** | **Float** | Net price for which the part is sold | [optional] |
| **price_gross** | **Float** | Gross price for which the part is sold | [optional] |
| **sev_client** | [**ModelPartSevClient**](ModelPartSevClient.md) |  | [optional] |
| **price_purchase** | **Float** | Purchase price of the part | [optional] |
| **tax_rate** | **Float** | Tax rate of the part |  |
| **status** | **Integer** | Status of the part. 50 &lt;-&gt; Inactive - 100 &lt;-&gt; Active | [optional] |
| **internal_comment** | **String** | An internal comment for the part.&lt;br&gt;       Does not appear on invoices and orders. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelPart.new(
  id: null,
  object_name: null,
  create: null,
  update: null,
  name: Dragonglass,
  part_number: Part-1000,
  text: null,
  category: null,
  stock: 10000,
  stock_enabled: false,
  unity: null,
  price: 100,
  price_net: 100,
  price_gross: 119,
  sev_client: null,
  price_purchase: 50,
  tax_rate: 19,
  status: 100,
  internal_comment: null
)
```

