# OpenapiClient::InvoiceSendByRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_type** | **String** | Specifies the way in which the invoice was sent to the customer.&lt;br&gt;       Accepts &#39;VPR&#39; (print), &#39;VP&#39; (postal), &#39;VM&#39; (mail) and &#39;VPDF&#39; (downloaded pfd). |  |
| **send_draft** | **Boolean** | To create a draft of an invoice for internal use. This operation will not alter the status of the invoice or create bookings for reports. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceSendByRequest.new(
  send_type: null,
  send_draft: null
)
```

