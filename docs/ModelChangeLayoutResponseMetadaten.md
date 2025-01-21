# OpenapiClient::ModelChangeLayoutResponseMetadaten

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | **Integer** | the number of pages in the document | [optional] |
| **doc_id** | **String** | the id of the document | [optional][readonly] |
| **thumbs** | [**Array&lt;ModelChangeLayoutResponseMetadatenThumbsInner&gt;**](ModelChangeLayoutResponseMetadatenThumbsInner.md) | the pdf file | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelChangeLayoutResponseMetadaten.new(
  pages: 1,
  doc_id: null,
  thumbs: null
)
```

