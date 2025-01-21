# OpenapiClient::ModelEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The email id | [optional][readonly] |
| **object_name** | **String** | The email object name | [optional][readonly] |
| **create** | **Time** | Date of mail creation | [optional][readonly] |
| **update** | **Time** | Date of last mail update | [optional][readonly] |
| **object** | [**ModelInvoiceResponse**](ModelInvoiceResponse.md) |  | [optional] |
| **from** | **String** | The sender of the email |  |
| **to** | **String** | The recipient of the email |  |
| **subject** | **String** | The subject of the email |  |
| **text** | **String** | The text of the email | [optional] |
| **sev_client** | [**ModelEmailSevClient**](ModelEmailSevClient.md) |  | [optional] |
| **cc** | **String** | A list of mail addresses which are in the cc | [optional] |
| **bcc** | **String** | A list of mail addresses which are in the bcc | [optional] |
| **arrived** | **Time** | Date the mail arrived | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelEmail.new(
  id: null,
  object_name: null,
  create: null,
  update: null,
  object: null,
  from: null,
  to: null,
  subject: null,
  text: null,
  sev_client: null,
  cc: null,
  bcc: null,
  arrived: null
)
```

