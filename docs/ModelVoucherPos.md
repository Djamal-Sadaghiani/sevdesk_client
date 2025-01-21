# OpenapiClient::ModelVoucherPos

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The voucher position id | [optional][readonly] |
| **object_name** | **String** | The voucher position object name |  |
| **map_all** | **Boolean** |  |  |
| **create** | **String** | Date of voucher position creation | [optional][readonly] |
| **update** | **String** | Date of last voucher position update | [optional][readonly] |
| **sev_client** | [**ModelVoucherPosSevClient**](ModelVoucherPosSevClient.md) |  | [optional] |
| **voucher** | [**ModelVoucherPosVoucher**](ModelVoucherPosVoucher.md) |  |  |
| **account_datev** | [**ModelVoucherPosAccountDatev**](ModelVoucherPosAccountDatev.md) |  |  |
| **accounting_type** | [**ModelVoucherPosAccountingType**](ModelVoucherPosAccountingType.md) |  |  |
| **estimated_accounting_type** | [**ModelVoucherPosEstimatedAccountingType**](ModelVoucherPosEstimatedAccountingType.md) |  | [optional] |
| **tax_rate** | **Float** | Tax rate of the voucher position. |  |
| **net** | **Boolean** | Determines whether &#39;sumNet&#39; or &#39;sumGross&#39; is regarded.&lt;br&gt;       If both are not given, &#39;sum&#39; is regarded and treated as net or gross depending on &#39;net&#39;.   All positions must be either net or gross, a mixture of the two is not possible. |  |
| **is_asset** | **Boolean** | Determines whether position is regarded as an asset which can be depreciated. | [optional] |
| **sum_net** | **Float** | Net sum of the voucher position.&lt;br&gt;      Only regarded if &#39;net&#39; is &#39;true&#39;, otherwise its readOnly. |  |
| **sum_tax** | **Float** | Tax sum of the voucher position. | [optional][readonly] |
| **sum_gross** | **Float** | Gross sum of the voucher position.&lt;br&gt;      Only regarded if &#39;net&#39; is &#39;false&#39;, otherwise its readOnly. |  |
| **sum_net_accounting** | **Float** | Net accounting sum. Is equal to sumNet. | [optional][readonly] |
| **sum_tax_accounting** | **Float** | Tax accounting sum. Is equal to sumTax. | [optional][readonly] |
| **sum_gross_accounting** | **Float** | Gross accounting sum. Is equal to sumGross. | [optional][readonly] |
| **comment** | **String** | Comment for the voucher position. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelVoucherPos.new(
  id: null,
  object_name: null,
  map_all: null,
  create: 01.01.2020,
  update: 01.01.2020,
  sev_client: null,
  voucher: null,
  account_datev: null,
  accounting_type: null,
  estimated_accounting_type: null,
  tax_rate: 19,
  net: true,
  is_asset: false,
  sum_net: 100,
  sum_tax: 19,
  sum_gross: 119,
  sum_net_accounting: null,
  sum_tax_accounting: null,
  sum_gross_accounting: null,
  comment: null
)
```

