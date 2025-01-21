# OpenapiClient::InvoiceRender201ResponseParametersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **values** | [**Array&lt;InvoiceRender201ResponseParametersInnerValuesInner&gt;**](InvoiceRender201ResponseParametersInnerValuesInner.md) |  | [optional] |
| **visible** | **Boolean** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceRender201ResponseParametersInner.new(
  key: language,
  name: Sprache,
  values: null,
  visible: true,
  value: de_DE
)
```

