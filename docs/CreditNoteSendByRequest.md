# OpenapiClient::CreditNoteSendByRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_type** | **String** | Specifies the way in which the credit note was sent to the customer.&lt;br&gt;       Accepts &#39;VPR&#39; (print), &#39;VP&#39; (postal), &#39;VM&#39; (mail) and &#39;VPDF&#39; (downloaded pfd). |  |
| **send_draft** | **Boolean** | To create a draft of a credit note for internal use. This operation will not alter the status of the credit note or create bookings for reports. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreditNoteSendByRequest.new(
  send_type: VPDF,
  send_draft: false
)
```

