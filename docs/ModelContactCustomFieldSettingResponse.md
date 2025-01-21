# OpenapiClient::ModelContactCustomFieldSettingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the contact field | [optional][readonly] |
| **object_name** | **String** | Internal object name which is &#39;ContactCustomFieldSetting&#39;. | [optional][readonly] |
| **create** | **Time** | Date of contact field creation | [optional][readonly] |
| **update** | **Time** | Date of contact field updated | [optional][readonly] |
| **sev_client** | [**ModelContactCustomFieldSettingResponseSevClient**](ModelContactCustomFieldSettingResponseSevClient.md) |  | [optional] |
| **name** | **String** | name of the contact fields | [optional][readonly] |
| **identifier** | **String** | Unique identifier for the contact field | [optional][readonly] |
| **description** | **String** | The description of the contact field | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactCustomFieldSettingResponse.new(
  id: 1,
  object_name: ContactCustomFieldSetting,
  create: null,
  update: null,
  sev_client: null,
  name: null,
  identifier: null,
  description: null
)
```

