# OpenapiClient::SaveCreditNoteDiscountSave

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount** | **Boolean** | Defines if this is a discount or a surcharge |  |
| **text** | **String** | A text for your discount |  |
| **percentage** | **Boolean** | Defines if this is a percentage or an absolute discount |  |
| **value** | **Float** | Value of the discount |  |
| **object_name** | **String** | Object name of the discount |  |
| **map_all** | **Boolean** | Internal param |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveCreditNoteDiscountSave.new(
  discount: true,
  text: null,
  percentage: null,
  value: null,
  object_name: Discounts,
  map_all: true
)
```

