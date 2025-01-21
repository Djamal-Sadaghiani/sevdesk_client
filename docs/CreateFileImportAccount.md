# OpenapiClient::CreateFileImportAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the check account | [optional] |
| **import_type** | **String** | Import type. Transactions can be imported by this method on the check account. | [optional] |
| **accounting_number** | **Integer** | The booking account used for this bank account, e.g. 1800 in SKR04 and 1200 in SKR03. Must be unique among all your CheckAccounts. Ignore to use a sensible default. | [optional] |
| **iban** | **String** | IBAN of the bank account, without spaces | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateFileImportAccount.new(
  name: Iron Bank,
  import_type: CSV,
  accounting_number: 1800,
  iban: DE02100500000054540402
)
```

