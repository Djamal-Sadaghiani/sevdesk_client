# OpenapiClient::SaveOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**ModelOrder**](ModelOrder.md) |  |  |
| **order_pos_save** | [**Array&lt;ModelOrderPos&gt;**](ModelOrderPos.md) |  | [optional] |
| **order_pos_delete** | [**SaveOrderOrderPosDelete**](SaveOrderOrderPosDelete.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveOrder.new(
  order: null,
  order_pos_save: null,
  order_pos_delete: null
)
```

