# OpenapiClient::ModelAccountingContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**ModelAccountingContactContact**](ModelAccountingContactContact.md) |  |  |
| **debitor_number** | **Integer** | Debitor number of the accounting contact. | [optional] |
| **creditor_number** | **Integer** | Creditor number of the accounting contact. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelAccountingContact.new(
  contact: null,
  debitor_number: null,
  creditor_number: null
)
```

