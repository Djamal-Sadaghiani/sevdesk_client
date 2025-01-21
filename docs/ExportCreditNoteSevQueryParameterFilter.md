# OpenapiClient::ExportCreditNoteSevQueryParameterFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | Start date of the credit note | [optional] |
| **end_date** | **Time** | End date of the credit note | [optional] |
| **contact** | [**ExportCreditNoteSevQueryParameterFilterContact**](ExportCreditNoteSevQueryParameterFilterContact.md) |  | [optional] |
| **start_amount** | **Integer** | filters the credit notes by amount | [optional] |
| **end_amount** | **Integer** | filters the credit notes by amount | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportCreditNoteSevQueryParameterFilter.new(
  start_date: null,
  end_date: null,
  contact: null,
  start_amount: 100,
  end_amount: 150
)
```

