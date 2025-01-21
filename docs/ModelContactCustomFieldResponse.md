# OpenapiClient::ModelContactCustomFieldResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the contact field | [optional] |
| **object_name** | **String** | Internal object name which is &#39;ContactCustomField&#39;. | [optional] |
| **create** | **Time** | Date of contact field creation | [optional] |
| **update** | **Time** | Date of contact field update | [optional] |
| **sev_client** | [**ModelContactCustomFieldResponseSevClient**](ModelContactCustomFieldResponseSevClient.md) |  | [optional] |
| **contact** | [**ModelContactCustomFieldResponseContact**](ModelContactCustomFieldResponseContact.md) |  | [optional] |
| **contact_custom_field_setting** | [**ModelContactCustomFieldSettingResponse**](ModelContactCustomFieldSettingResponse.md) | the contact custom field setting | [optional] |
| **value** | **String** | The value of the contact field | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactCustomFieldResponse.new(
  id: 0,
  object_name: ContactCustomField,
  create: null,
  update: null,
  sev_client: null,
  contact: null,
  contact_custom_field_setting: null,
  value: null
)
```

