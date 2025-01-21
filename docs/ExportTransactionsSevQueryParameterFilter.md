# OpenapiClient::ExportTransactionsSevQueryParameterFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paymt_purpose** | **String** | the payment purpose | [optional] |
| **name** | **String** | the name of the payee/payer | [optional] |
| **start_date** | **Time** | Start date of the transactions | [optional] |
| **end_date** | **Time** | End date of the transactions | [optional] |
| **start_amount** | **Integer** | filters the transactions by amount | [optional] |
| **end_amount** | **Integer** | filters the transactions by amount | [optional] |
| **check_account** | [**ExportTransactionsSevQueryParameterFilterCheckAccount**](ExportTransactionsSevQueryParameterFilterCheckAccount.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportTransactionsSevQueryParameterFilter.new(
  paymt_purpose: salary,
  name: Cercei Lannister,
  start_date: null,
  end_date: null,
  start_amount: 100,
  end_amount: 150,
  check_account: null
)
```

