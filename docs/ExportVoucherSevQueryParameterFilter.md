# OpenapiClient::ExportVoucherSevQueryParameterFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | Start date of the voucher | [optional] |
| **end_date** | **Time** | End date of the voucher | [optional] |
| **start_pay_date** | **Time** | Start pay date of the voucher | [optional] |
| **end_pay_date** | **Time** | End pay date of the voucher | [optional] |
| **contact** | [**ExportVoucherSevQueryParameterFilterContact**](ExportVoucherSevQueryParameterFilterContact.md) |  | [optional] |
| **start_amount** | **Integer** | filters the vouchers by amount | [optional] |
| **end_amount** | **Integer** | filters the vouchers by amount | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportVoucherSevQueryParameterFilter.new(
  start_date: null,
  end_date: null,
  start_pay_date: null,
  end_pay_date: null,
  contact: null,
  start_amount: 100,
  end_amount: 150
)
```

