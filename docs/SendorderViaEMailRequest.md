# OpenapiClient::SendorderViaEMailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_email** | **String** | The recipient of the email. |  |
| **subject** | **String** | The subject of the email. |  |
| **text** | **String** | The text of the email. Can contain html. |  |
| **copy** | **Boolean** | Should a copy of this email be sent to you? | [optional] |
| **additional_attachments** | **String** | Additional attachments to the mail. String of IDs of existing documents in your       *                      sevdesk account separated by &#39;,&#39; | [optional] |
| **cc_email** | **String** | String of mail addresses to be put as cc separated by &#39;,&#39; | [optional] |
| **bcc_email** | **String** | String of mail addresses to be put as bcc separated by &#39;,&#39; | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SendorderViaEMailRequest.new(
  to_email: null,
  subject: null,
  text: null,
  copy: null,
  additional_attachments: null,
  cc_email: null,
  bcc_email: null
)
```

