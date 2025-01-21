# OpenapiClient::CreateClearingAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the check account | [optional] |
| **accounting_number** | **Integer** | The booking account used for this clearing account, e.g. 3320 in SKR04 and 1723 in SKR03. Must be unique among all your CheckAccounts. Ask your tax consultant what to choose. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateClearingAccount.new(
  name: Coupons,
  accounting_number: null
)
```

