# OpenapiClient::ModelContactAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The contact address id | [optional][readonly] |
| **object_name** | **String** | The contact address object name | [optional][readonly] |
| **create** | **Time** | Date of contact address creation | [optional][readonly] |
| **update** | **Time** | Date of last contact address update | [optional][readonly] |
| **contact** | [**ModelContactAddressResponseContact**](ModelContactAddressResponseContact.md) |  |  |
| **street** | **String** | Street name | [optional] |
| **zip** | **String** | Zib code | [optional] |
| **city** | **String** | City name | [optional] |
| **country** | [**ModelContactAddressResponseCountry**](ModelContactAddressResponseCountry.md) |  |  |
| **category** | [**ModelContactAddressResponseCategory**](ModelContactAddressResponseCategory.md) |  |  |
| **name** | **String** | Name in address | [optional] |
| **sev_client** | [**ModelContactAddressResponseSevClient**](ModelContactAddressResponseSevClient.md) |  | [optional] |
| **name2** | **String** | Second name in address | [optional] |
| **name3** | **String** | Third name in address | [optional] |
| **name4** | **String** | Fourth name in address | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactAddress.new(
  id: null,
  object_name: null,
  create: null,
  update: null,
  contact: null,
  street: South road 15,
  zip: 12345,
  city: The North,
  country: null,
  category: null,
  name: John Snow,
  sev_client: null,
  name2: Targaryen,
  name3: null,
  name4: null
)
```

