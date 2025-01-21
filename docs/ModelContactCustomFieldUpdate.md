# OpenapiClient::ModelContactCustomFieldUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**ModelContactCustomFieldContact**](ModelContactCustomFieldContact.md) |  | [optional] |
| **contact_custom_field_setting** | [**ModelContactCustomFieldUpdateContactCustomFieldSetting**](ModelContactCustomFieldUpdateContactCustomFieldSetting.md) |  | [optional] |
| **value** | **String** | The value of the contact field | [optional] |
| **object_name** | **String** | Internal object name which is &#39;ContactCustomField&#39;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactCustomFieldUpdate.new(
  contact: null,
  contact_custom_field_setting: null,
  value: null,
  object_name: ContactCustomField
)
```

