# OpenapiClient::ModelCheckAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The check account id | [optional][readonly] |
| **object_name** | **String** | The check account object name | [optional][readonly] |
| **create** | **Time** | Date of check account creation | [optional][readonly] |
| **update** | **Time** | Date of last check account update | [optional][readonly] |
| **sev_client** | [**ModelCheckAccountResponseSevClient**](ModelCheckAccountResponseSevClient.md) |  | [optional] |
| **name** | **String** | Name of the check account | [optional] |
| **iban** | **String** | The IBAN of the account | [optional] |
| **type** | **String** | The type of the check account. Account with a CSV or MT940 import are regarded as online. | [optional] |
| **import_type** | **String** | Import type, for accounts that are type \&quot;online\&quot; but not connected to a data provider. | [optional] |
| **currency** | **String** | The currency of the check account. | [optional] |
| **default_account** | **String** | Defines if this check account is the default account. | [optional][default to &#39;0&#39;] |
| **base_account** | **String** | This will be 1 if the account is your base account that comes with every sevdesk setup. | [optional] |
| **priority** | **String** | Defines the sorting of accounts, highest is first. | [optional] |
| **status** | **String** | Status of the check account. 0 &lt;-&gt; Archived - 100 &lt;-&gt; Active | [optional][default to &#39;100&#39;] |
| **balance** | **String** | The account balance as reported by PayPal or finAPI. Not set for other types of accounts. | [optional] |
| **bank_server** | **String** | Bank server of check account, only set if the account is connected to a data provider | [optional] |
| **auto_map_transactions** | **String** | Defines if transactions on this account are automatically mapped to invoice and vouchers when imported if possible. | [optional][default to &#39;1&#39;] |
| **auto_sync_transactions** | **String** | If this is 1 the account will be automatically updated through PayPal or finAPI. Only applicable for connected online accounts. | [optional] |
| **last_sync** | **Time** | Timepoint of the last payment import through PayPal or finAPI. | [optional] |
| **accounting_number** | **String** | The booking account used for this account, e.g. 1800 in SKR04 and 1200 in SKR03. Must be unique among all your CheckAccounts. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCheckAccountResponse.new(
  id: 2,
  object_name: CheckAccount,
  create: 2024-06-28T14:42:58+02:00,
  update: 2024-06-28T14:42:58+02:00,
  sev_client: null,
  name: Iron Bank,
  iban: DE02100500000054540402,
  type: online,
  import_type: CSV,
  currency: EUR,
  default_account: null,
  base_account: 1,
  priority: 2,
  status: 100,
  balance: 12.34,
  bank_server: FINAPI,
  auto_map_transactions: null,
  auto_sync_transactions: null,
  last_sync: 2024-06-28T14:42:58+02:00,
  accounting_number: 1800
)
```

