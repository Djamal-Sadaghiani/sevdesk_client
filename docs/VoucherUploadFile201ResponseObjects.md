# OpenapiClient::VoucherUploadFile201ResponseObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Float** |  | [optional] |
| **mime_type** | **String** |  | [optional] |
| **origin_mime_type** | **String** |  | [optional] |
| **filename** | **String** |  | [optional] |
| **content_hash** | **String** |  | [optional] |
| **content** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VoucherUploadFile201ResponseObjects.new(
  pages: 1,
  mime_type: image/jpg,
  origin_mime_type: application/pdf,
  filename: f019bec36c65f5a0e7d2c63cc33f0681.pdf,
  content_hash: 1998dea8c6e9e489139caf896690641c0ea065ce5770b51cf2a4d10797f99685,
  content: null
)
```

