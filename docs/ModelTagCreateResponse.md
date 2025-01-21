# OpenapiClient::ModelTagCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the tag | [optional][readonly] |
| **object_name** | **String** | Internal object name which is &#39;TagRelation&#39;. | [optional][readonly] |
| **additional_information** | **String** |  | [optional] |
| **create** | **Time** | Date of tag creation | [optional][readonly] |
| **tag** | [**ModelTagCreateResponseTag**](ModelTagCreateResponseTag.md) |  | [optional] |
| **object** | [**CreateTagRequestObject**](CreateTagRequestObject.md) |  | [optional] |
| **sev_client** | [**ModelTagResponseSevClient**](ModelTagResponseSevClient.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelTagCreateResponse.new(
  id: 1,
  object_name: TagRelation,
  additional_information: null,
  create: null,
  tag: null,
  object: null,
  sev_client: null
)
```

