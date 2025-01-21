# OpenapiClient::ModelCheckAccountTransactionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The check account transaction id | [optional][readonly] |
| **object_name** | **String** | The check account transaction object name | [optional][readonly] |
| **create** | **Time** | Date of check account transaction creation | [optional][readonly] |
| **update** | **Time** | Date of last check account transaction update | [optional][readonly] |
| **sev_client** | [**ModelCheckAccountTransactionResponseSevClient**](ModelCheckAccountTransactionResponseSevClient.md) |  | [optional] |
| **value_date** | **Time** | Date the check account transaction was imported | [optional] |
| **entry_date** | **Time** | Date the check account transaction was booked | [optional] |
| **paymt_purpose** | **String** | The purpose of the transaction | [optional] |
| **amount** | **String** | Amount of the transaction | [optional] |
| **payee_payer_name** | **String** | Name of the other party | [optional] |
| **payee_payer_acct_no** | **String** | IBAN or account number of the other party | [optional] |
| **payee_payer_bank_code** | **String** | BIC or bank code of the other party | [optional] |
| **gv_code** | **String** | ZKA business transaction code. This can be given for finAPI accounts. | [optional] |
| **entry_text** | **String** | Transaction type, according to the bank. This can be given for finAPI accounts. | [optional] |
| **prima_nota_no** | **String** | Transaction primanota. This can be given for finAPI accounts. | [optional] |
| **check_account** | [**ModelCheckAccountTransactionResponseCheckAccount**](ModelCheckAccountTransactionResponseCheckAccount.md) |  | [optional] |
| **status** | **String** | Status of the check account transaction.&lt;br&gt;       100 &lt;-&gt; Created&lt;br&gt;       200 &lt;-&gt; Linked&lt;br&gt;       300 &lt;-&gt; Private&lt;br&gt;       350 &lt;-&gt; Auto-booked without user confirmation&lt;br&gt;400 &lt;-&gt; Booked | [optional][readonly] |
| **source_transaction** | [**ModelCheckAccountTransactionResponseSourceTransaction**](ModelCheckAccountTransactionResponseSourceTransaction.md) |  | [optional] |
| **target_transaction** | [**ModelCheckAccountTransactionResponseTargetTransaction**](ModelCheckAccountTransactionResponseTargetTransaction.md) |  | [optional] |
| **enshrined** | **Time** | Timepoint when the transaction was enshrined. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCheckAccountTransactionResponse.new(
  id: 1,
  object_name: CheckAccountTransaction,
  create: null,
  update: null,
  sev_client: null,
  value_date: 2024-05-10T00:00+02:00,
  entry_date: 2024-05-10T00:00+02:00,
  paymt_purpose: salary,
  amount: -100.32,
  payee_payer_name: Cercei Lannister,
  payee_payer_acct_no: null,
  payee_payer_bank_code: null,
  gv_code: null,
  entry_text: null,
  prima_nota_no: null,
  check_account: null,
  status: null,
  source_transaction: null,
  target_transaction: null,
  enshrined: null
)
```

