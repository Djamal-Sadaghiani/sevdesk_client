# OpenapiClient::GetTemplates200ResponseTemplatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **translation_code** | **String** |  | [optional] |
| **sev_client** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **html** | **String** |  | [optional] |
| **default** | **Integer** |  | [optional] |
| **premium** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTemplates200ResponseTemplatesInner.new(
  id: 57986aee6bd2d53306068da1,
  name: SEVDOC_TEMPLATE_STANDARD,
  translation_code: SEVDOC_TEMPLATE_STANDARD,
  sev_client: 0,
  type: Invoice,
  html: null,
  default: null,
  premium: false
)
```

