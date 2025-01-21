# OpenapiClient::ModelCreditNoteMailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **object_name** | **String** |  | [optional] |
| **additional_information** | **String** |  | [optional] |
| **create** | **Time** | Date of email creation | [optional][readonly] |
| **update** | **Time** | Date of last email update | [optional][readonly] |
| **object** | [**ModelCreditNoteResponse**](ModelCreditNoteResponse.md) |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **sev_client** | [**ModelCreditNoteMailResponseSevClient**](ModelCreditNoteMailResponseSevClient.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCreditNoteMailResponse.new(
  id: 1,
  object_name: Email,
  additional_information: null,
  create: 2023-04-18T15:45:38+02:00,
  update: 2023-04-18T15:45:38+02:00,
  object: null,
  from: example@mail.com,
  to: example2@mail.com,
  subject: subject,
  text: example,
  sev_client: null
)
```

