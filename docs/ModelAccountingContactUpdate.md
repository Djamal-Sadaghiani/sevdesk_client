# OpenapiClient::ModelAccountingContactUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**ModelAccountingContactUpdateContact**](ModelAccountingContactUpdateContact.md) |  | [optional] |
| **debitor_number** | **Integer** | Debitor number of the accounting contact. | [optional] |
| **creditor_number** | **Integer** | Creditor number of the accounting contact. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelAccountingContactUpdate.new(
  contact: null,
  debitor_number: null,
  creditor_number: null
)
```

