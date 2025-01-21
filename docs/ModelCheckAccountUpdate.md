# OpenapiClient::ModelCheckAccountUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the check account | [optional] |
| **type** | **String** | The type of the check account. Account with a CSV or MT940 import are regarded as online.&lt;br&gt;       Apart from that, created check accounts over the API need to be offline, as online accounts with an active connection       to a bank application can not be managed over the API. | [optional] |
| **import_type** | **String** | Import type. Transactions can be imported by this method on the check account. | [optional] |
| **currency** | **String** | The currency of the check account. | [optional] |
| **default_account** | **Integer** | Defines if this check account is the default account. | [optional][default to DEFAULT_ACCOUNT::N0] |
| **status** | **Integer** | Status of the check account. 0 &lt;-&gt; Archived - 100 &lt;-&gt; Active | [optional][default to STATUS::N100] |
| **auto_map_transactions** | **Integer** | Defines if transactions on this account are automatically mapped to invoice and vouchers when imported if possible. | [optional][default to 1] |
| **accounting_number** | **String** | The booking account used for this bank account, e.g. 1800 in SKR04 and 1200 in SKR03. Must be unique among all your CheckAccounts. Ignore to use a sensible default. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCheckAccountUpdate.new(
  name: Iron Bank,
  type: online,
  import_type: CSV,
  currency: EUR,
  default_account: null,
  status: null,
  auto_map_transactions: null,
  accounting_number: null
)
```

