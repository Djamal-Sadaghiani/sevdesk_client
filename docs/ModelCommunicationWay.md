# OpenapiClient::ModelCommunicationWay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The communication way id | [optional][readonly] |
| **object_name** | **String** | The communication way object name | [optional][readonly] |
| **create** | **Time** | Date of communication way creation | [optional][readonly] |
| **update** | **Time** | Date of last communication way update | [optional][readonly] |
| **contact** | [**ModelCommunicationWayContact**](ModelCommunicationWayContact.md) |  | [optional] |
| **type** | **String** | Type of the communication way |  |
| **value** | **String** | The value of the communication way.&lt;br&gt;       For example the phone number, e-mail address or website. |  |
| **key** | [**ModelCommunicationWayKey**](ModelCommunicationWayKey.md) |  |  |
| **main** | **Boolean** | Defines whether the communication way is the main communication way for the contact. | [optional] |
| **sev_client** | [**ModelCommunicationWaySevClient**](ModelCommunicationWaySevClient.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCommunicationWay.new(
  id: null,
  object_name: null,
  create: null,
  update: null,
  contact: null,
  type: EMAIL,
  value: null,
  key: null,
  main: false,
  sev_client: null
)
```

