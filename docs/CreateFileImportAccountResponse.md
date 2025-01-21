# OpenapiClient::CreateFileImportAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The check account id | [optional] |
| **object_name** | **String** | The check account object name, always &#39;CheckAccount&#39; | [optional] |
| **create** | **Time** | Date of check account creation | [optional] |
| **update** | **Time** | Date of last check account update | [optional] |
| **sev_client** | [**CreateFileImportAccountResponseSevClient**](CreateFileImportAccountResponseSevClient.md) |  | [optional] |
| **name** | **String** | Name of the check account | [optional] |
| **iban** | **String** | The IBAN of the account | [optional] |
| **type** | **String** | The type of the check account. Account with a CSV or MT940 import are regarded as online. | [optional] |
| **import_type** | **String** | Import type, for accounts that are type \&quot;online\&quot; but not connected to a data provider. Transactions can be imported by this method on the check account. | [optional] |
| **currency** | **String** | The currency of the check account. | [optional] |
| **default_account** | **String** | Defines if this check account is the default account. | [optional][default to &#39;0&#39;] |
| **status** | **String** | Status of the check account. 0 &lt;-&gt; Archived - 100 &lt;-&gt; Active | [optional][default to &#39;100&#39;] |
| **auto_map_transactions** | **String** | Defines if transactions on this account are automatically mapped to invoice and vouchers when imported if possible. | [optional][default to &#39;1&#39;] |
| **accounting_number** | **String** | The booking account used for this bank account, e.g. 1800 in SKR04 and 1200 in SKR03. Must be unique among all your CheckAccounts. Ignore to use a sensible default. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateFileImportAccountResponse.new(
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
  status: 100,
  auto_map_transactions: null,
  accounting_number: 1800
)
```

