# OpenapiClient::ExportContactSevQueryParameterFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **zip** | **Integer** | filters the contacts by zip code | [optional] |
| **city** | **String** | filters the contacts by city | [optional] |
| **country** | [**ExportContactSevQueryParameterFilterCountry**](ExportContactSevQueryParameterFilterCountry.md) |  | [optional] |
| **depth** | **Boolean** | export only organisations | [optional] |
| **only_people** | **Boolean** | export only people | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportContactSevQueryParameterFilter.new(
  zip: 77656,
  city: Offenburg,
  country: null,
  depth: null,
  only_people: null
)
```

