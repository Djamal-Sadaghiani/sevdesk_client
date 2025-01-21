# OpenapiClient::ModelContactCustomField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**ModelContactCustomFieldContact**](ModelContactCustomFieldContact.md) |  |  |
| **contact_custom_field_setting** | [**ModelContactCustomFieldContactCustomFieldSetting**](ModelContactCustomFieldContactCustomFieldSetting.md) |  |  |
| **value** | **String** | The value of the contact field |  |
| **object_name** | **String** | Internal object name which is &#39;ContactCustomField&#39;. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactCustomField.new(
  contact: null,
  contact_custom_field_setting: null,
  value: null,
  object_name: ContactCustomField
)
```

