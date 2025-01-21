# OpenapiClient::SaveOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**ModelOrderResponse**](ModelOrderResponse.md) |  | [optional] |
| **order_pos** | [**Array&lt;ModelOrderPosResponse&gt;**](ModelOrderPosResponse.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveOrderResponse.new(
  order: null,
  order_pos: null
)
```

