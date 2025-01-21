# OpenapiClient::CreateCreditNoteFromVoucherRequestVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the existing Voucher |  |
| **object_name** | **String** | The objectName must be &#39;Voucher&#39; |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateCreditNoteFromVoucherRequestVoucher.new(
  id: 1234,
  object_name: Voucher
)
```

