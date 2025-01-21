# OpenapiClient::ModelCheckAccountTransactionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value_date** | **Time** | Date the check account transaction was booked | [optional] |
| **entry_date** | **Time** | Date the check account transaction was imported | [optional] |
| **paymt_purpose** | **String** | the purpose of the transaction | [optional] |
| **amount** | **Float** | Amount of the transaction | [optional] |
| **payee_payer_name** | **String** | Name of the payee/payer | [optional] |
| **check_account** | [**ModelCheckAccountTransactionUpdateCheckAccount**](ModelCheckAccountTransactionUpdateCheckAccount.md) |  | [optional] |
| **status** | **Integer** | Status of the check account transaction.&lt;br&gt;       100 &lt;-&gt; Created&lt;br&gt;       200 &lt;-&gt; Linked&lt;br&gt;       300 &lt;-&gt; Private&lt;br&gt;       400 &lt;-&gt; Booked | [optional] |
| **source_transaction** | [**ModelCheckAccountTransactionSourceTransaction**](ModelCheckAccountTransactionSourceTransaction.md) |  | [optional] |
| **target_transaction** | [**ModelCheckAccountTransactionTargetTransaction**](ModelCheckAccountTransactionTargetTransaction.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCheckAccountTransactionUpdate.new(
  value_date: 2024-05-10T00:00+02:00,
  entry_date: 2024-05-10T00:00+02:00,
  paymt_purpose: salary,
  amount: 100,
  payee_payer_name: Cercei Lannister,
  check_account: null,
  status: null,
  source_transaction: null,
  target_transaction: null
)
```

