# OpenapiClient::SaveVoucher

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher** | [**ModelVoucher**](ModelVoucher.md) |  |  |
| **voucher_pos_save** | [**Array&lt;ModelVoucherPos&gt;**](ModelVoucherPos.md) |  | [optional] |
| **voucher_pos_delete** | [**SaveVoucherVoucherPosDelete**](SaveVoucherVoucherPosDelete.md) |  | [optional] |
| **filename** | **File** | Filename of a previously upload file which should be attached. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveVoucher.new(
  voucher: null,
  voucher_pos_save: null,
  voucher_pos_delete: null,
  filename: null
)
```

