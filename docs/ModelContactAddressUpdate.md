# OpenapiClient::ModelContactAddressUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact** | [**ModelContactAddressUpdateContact**](ModelContactAddressUpdateContact.md) |  | [optional] |
| **street** | **String** | Street name | [optional] |
| **zip** | **String** | Zib code | [optional] |
| **city** | **String** | City name | [optional] |
| **country** | [**ModelContactAddressUpdateCountry**](ModelContactAddressUpdateCountry.md) |  | [optional] |
| **category** | [**ModelContactAddressResponseCategory**](ModelContactAddressResponseCategory.md) |  | [optional] |
| **name** | **String** | Name in address | [optional] |
| **name2** | **String** | Second name in address | [optional] |
| **name3** | **String** | Third name in address | [optional] |
| **name4** | **String** | Fourth name in address | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactAddressUpdate.new(
  contact: null,
  street: South road 15,
  zip: 12345,
  city: The North,
  country: null,
  category: null,
  name: John Snow,
  name2: Targaryen,
  name3: null,
  name4: null
)
```

