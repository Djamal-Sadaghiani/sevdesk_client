# OpenapiClient::SaveVoucherResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher** | [**ModelVoucherResponse**](ModelVoucherResponse.md) |  | [optional] |
| **voucher_pos** | [**Array&lt;ModelVoucherPosResponse&gt;**](ModelVoucherPosResponse.md) |  | [optional] |
| **filename** | **File** | Filename of a previously upload file which should be attached. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SaveVoucherResponse.new(
  voucher: null,
  voucher_pos: null,
  filename: null
)
```

