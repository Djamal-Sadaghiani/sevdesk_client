# OpenapiClient::ModelCommunicationWayUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**ModelCommunicationWayUpdateContact**](ModelCommunicationWayUpdateContact.md) |  | [optional] |
| **type** | **String** | Type of the communication way | [optional] |
| **value** | **String** | The value of the communication way.&lt;br&gt;       For example the phone number, e-mail address or website. | [optional] |
| **key** | [**ModelCommunicationWayUpdateKey**](ModelCommunicationWayUpdateKey.md) |  | [optional] |
| **main** | **Boolean** | Defines whether the communication way is the main communication way for the contact. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCommunicationWayUpdate.new(
  contact: null,
  type: EMAIL,
  value: null,
  key: null,
  main: false
)
```

