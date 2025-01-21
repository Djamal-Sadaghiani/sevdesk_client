# OpenapiClient::ModelDiscount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id of the discount | [optional][readonly] |
| **object_name** | **String** | Model name, which is &#39;Discounts&#39; | [optional][readonly] |
| **create** | **Time** | Date of discount creation | [optional][readonly] |
| **update** | **Time** | Date of last discount update | [optional][readonly] |
| **object** | [**ModelDiscountObject**](ModelDiscountObject.md) |  | [optional] |
| **sev_client** | **String** | Client to which invoice belongs. Will be filled automatically | [optional][readonly] |
| **text** | **String** | A text describing your position. | [optional][readonly] |
| **percentage** | **String** | Defines if this is a percentage or an absolute discount | [optional] |
| **value** | **String** | Value of the discount | [optional] |
| **is_net** | **String** | Defines is the Discount net or gross 0 - gross 1 - net | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelDiscount.new(
  id: 0,
  object_name: Discounts,
  create: null,
  update: null,
  object: null,
  sev_client: 0,
  text: null,
  percentage: 1,
  value: 10,
  is_net: 1
)
```

