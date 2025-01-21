# OpenapiClient::ModelDiscountsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the discount | [optional] |
| **object_name** | **String** | Model name, which is &#39;Discounts&#39; | [optional] |
| **create** | **String** | Date of discount creation | [optional] |
| **update** | **String** | Date of last discount update | [optional] |
| **sev_client** | **String** | Client to which the discount belongs | [optional] |
| **discount** | **String** | Indicates that this is a discount or a surcharge (0 &#x3D; surcharge, 1 &#x3D; discount) | [optional] |
| **text** | **String** | A text describing your position. | [optional] |
| **percentage** | **String** | Defines if this is a percentage or an absolute discount | [optional] |
| **value** | **String** | Value of the discount | [optional] |
| **is_net** | **String** | Defines is the Discount net or gross (0 &#x3D; net, 1 &#x3D; gross) | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelDiscountsResponse.new(
  id: 1234,
  object_name: Discounts,
  create: 2023-03-15T13:46:33+01:00,
  update: 2023-03-15T13:46:33+01:00,
  sev_client: 1234,
  discount: 1,
  text: Info about the discount,
  percentage: 1,
  value: 5,
  is_net: 0
)
```

