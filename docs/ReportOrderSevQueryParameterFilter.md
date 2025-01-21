# OpenapiClient::ReportOrderSevQueryParameterFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_type** | **String** | Type of orders you want to export 1. AN - Angebote 2. AB - Aufträge 3. LI - Lieferscheine | [optional] |
| **start_date** | **Time** | Start date of the order | [optional] |
| **end_date** | **Time** | End date of the order | [optional] |
| **contact** | [**ReportOrderSevQueryParameterFilterContact**](ReportOrderSevQueryParameterFilterContact.md) |  | [optional] |
| **start_amount** | **Integer** | filters the orders by amount | [optional] |
| **end_amount** | **Integer** | filters the orders by amount | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportOrderSevQueryParameterFilter.new(
  order_type: null,
  start_date: null,
  end_date: null,
  contact: null,
  start_amount: 100,
  end_amount: 150
)
```

