# OpenapiClient::ModelCheckAccountTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The check account transaction id | [optional][readonly] |
| **object_name** | **String** | The check account transaction object name | [optional][readonly] |
| **create** | **Time** | Date of check account transaction creation | [optional][readonly] |
| **update** | **Time** | Date of last check account transaction update | [optional][readonly] |
| **sev_client** | [**ModelCheckAccountTransactionSevClient**](ModelCheckAccountTransactionSevClient.md) |  | [optional] |
| **value_date** | **Time** | Date the check account transaction was booked |  |
| **entry_date** | **Time** | Date the check account transaction was imported | [optional] |
| **paymt_purpose** | **String** | The purpose of the transaction | [optional] |
| **amount** | **Float** | Amount of the transaction |  |
| **payee_payer_name** | **String** | Name of the other party |  |
| **payee_payer_acct_no** | **String** | IBAN or account number of the other party | [optional] |
| **payee_payer_bank_code** | **String** | BIC or bank code of the other party | [optional] |
| **check_account** | [**ModelCheckAccountTransactionCheckAccount**](ModelCheckAccountTransactionCheckAccount.md) |  |  |
| **status** | **Integer** | Status of the check account transaction.&lt;br&gt;       100 &lt;-&gt; Created&lt;br&gt;       200 &lt;-&gt; Linked&lt;br&gt;       300 &lt;-&gt; Private&lt;br&gt;       400 &lt;-&gt; Booked |  |
| **source_transaction** | [**ModelCheckAccountTransactionSourceTransaction**](ModelCheckAccountTransactionSourceTransaction.md) |  | [optional] |
| **target_transaction** | [**ModelCheckAccountTransactionTargetTransaction**](ModelCheckAccountTransactionTargetTransaction.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCheckAccountTransaction.new(
  id: null,
  object_name: null,
  create: null,
  update: null,
  sev_client: null,
  value_date: 2024-05-10T00:00+02:00,
  entry_date: 2024-05-10T00:00+02:00,
  paymt_purpose: salary,
  amount: 100.1,
  payee_payer_name: Cercei Lannister,
  payee_payer_acct_no: null,
  payee_payer_bank_code: null,
  check_account: null,
  status: null,
  source_transaction: null,
  target_transaction: null
)
```

