# OpenapiClient::ModelContactCustomFieldSettingUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | name of the contact fields | [optional] |
| **description** | **String** | The description of the contact field | [optional] |
| **object_name** | **String** | Internal object name which is &#39;ContactCustomFieldSetting&#39;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactCustomFieldSettingUpdate.new(
  name: null,
  description: null,
  object_name: ContactCustomFieldSetting
)
```

