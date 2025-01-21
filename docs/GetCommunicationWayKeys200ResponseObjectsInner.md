# OpenapiClient::GetCommunicationWayKeys200ResponseObjectsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the communication way key 1. ID: 1 - Privat 2. ID: 2 - Arbeit 3. ID: 3 - Fax 4. ID: 4 - Mobil 5. ID: 5 - \&quot; \&quot; 6. ID: 6 - Autobox 7. ID: 7 - Newsletter 8. ID: 8 - Rechnungsadresse | [optional] |
| **object_name** | **String** | object name which is &#39;CommunicationWayKey&#39;. | [optional] |
| **create** | **Time** | Date the communication way key was created | [optional] |
| **upadate** | **Time** | Date the communication way key was last updated | [optional] |
| **name** | **String** | Name of the communication way key | [optional] |
| **translation_code** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetCommunicationWayKeys200ResponseObjectsInner.new(
  id: 2,
  object_name: CommunicationWayKey,
  create: null,
  upadate: null,
  name: Arbeit,
  translation_code: COMM_WAY_KEY_WORK
)
```

