# OpenapiClient::ModelTagResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the tag | [optional][readonly] |
| **object_name** | **String** | Internal object name which is &#39;Tag&#39;. | [optional][readonly] |
| **additional_information** | **String** |  | [optional] |
| **create** | **Time** | Date of tag creation | [optional][readonly] |
| **name** | **String** | name of the tag | [optional][readonly] |
| **sev_client** | [**ModelTagResponseSevClient**](ModelTagResponseSevClient.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelTagResponse.new(
  id: 1,
  object_name: Tag,
  additional_information: null,
  create: null,
  name: null,
  sev_client: null
)
```

