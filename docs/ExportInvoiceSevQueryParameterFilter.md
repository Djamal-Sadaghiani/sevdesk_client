# OpenapiClient::ExportInvoiceSevQueryParameterFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invoice_type** | **Array&lt;String&gt;** | Type of invoices you want to export 1. RE - Rechnung 2. SR - Stornorechnung 3. TR - Teilrechnung 4. AR - Abschlagsrechnung 5. ER - Endrechnung 6. WKR - Wiederkehrende Rechnung 7. MA - Mahnung | [optional] |
| **start_date** | **Time** | Start date of the invoice | [optional] |
| **end_date** | **Time** | End date of the invoice | [optional] |
| **contact** | [**ExportInvoiceSevQueryParameterFilterContact**](ExportInvoiceSevQueryParameterFilterContact.md) |  | [optional] |
| **start_amount** | **Integer** | filters the invoices by amount | [optional] |
| **end_amount** | **Integer** | filters the invoices by amount | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExportInvoiceSevQueryParameterFilter.new(
  invoice_type: null,
  start_date: null,
  end_date: null,
  contact: null,
  start_amount: 100,
  end_amount: 150
)
```

