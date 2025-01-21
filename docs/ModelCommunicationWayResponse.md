# OpenapiClient::ModelCommunicationWayResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The communication way id | [optional][readonly] |
| **object_name** | **String** | The communication way object name | [optional][readonly] |
| **create** | **Time** | Date of communication way creation | [optional][readonly] |
| **update** | **Time** | Date of last communication way update | [optional][readonly] |
| **contact** | [**ModelCommunicationWayResponseContact**](ModelCommunicationWayResponseContact.md) |  | [optional] |
| **type** | **String** | Type of the communication way | [optional][readonly] |
| **value** | **String** | The value of the communication way.&lt;br&gt;       For example the phone number, e-mail address or website. | [optional][readonly] |
| **key** | [**ModelCommunicationWayResponseKey**](ModelCommunicationWayResponseKey.md) |  | [optional] |
| **main** | **String** | Defines whether the communication way is the main communication way for the contact. | [optional][readonly] |
| **sev_client** | [**ModelCommunicationWayResponseSevClient**](ModelCommunicationWayResponseSevClient.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCommunicationWayResponse.new(
  id: 0,
  object_name: CommunicationWay,
  create: null,
  update: null,
  contact: null,
  type: EMAIL,
  value: null,
  key: null,
  main: 0,
  sev_client: null
)
```

