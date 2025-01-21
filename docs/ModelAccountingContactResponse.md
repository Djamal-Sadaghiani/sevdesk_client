# OpenapiClient::ModelAccountingContactResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The accounting contact id | [optional][readonly] |
| **object_name** | **String** | The accounting contact object name | [optional][readonly] |
| **create** | **Time** | Date of accounting contact creation | [optional][readonly] |
| **update** | **Time** | Date of last accounting contact update | [optional][readonly] |
| **contact** | [**ModelAccountingContactResponseContact**](ModelAccountingContactResponseContact.md) |  | [optional] |
| **sev_client** | [**ModelAccountingContactResponseSevClient**](ModelAccountingContactResponseSevClient.md) |  | [optional] |
| **debitor_number** | **String** | Debitor number of the accounting contact. | [optional][readonly] |
| **creditor_number** | **String** | Creditor number of the accounting contact. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelAccountingContactResponse.new(
  id: 0,
  object_name: AccountingContact,
  create: null,
  update: null,
  contact: null,
  sev_client: null,
  debitor_number: 0,
  creditor_number: 0
)
```

