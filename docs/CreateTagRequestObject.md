# OpenapiClient::CreateTagRequestObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the invoice/order/voucher/creditNote |  |
| **object_name** | **String** | Model name |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateTagRequestObject.new(
  id: 1,
  object_name: Invoice
)
```

