# OpenapiClient::ModelVoucherUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voucher_date** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **supplier** | [**ModelVoucherUpdateSupplier**](ModelVoucherUpdateSupplier.md) |  | [optional] |
| **supplier_name** | **String** | The supplier name.&lt;br&gt;       The value you provide here will determine what supplier name is shown for the voucher in case you did not provide a supplier. | [optional] |
| **description** | **String** | The description of the voucher. Essentially the voucher number. | [optional] |
| **pay_date** | **Time** | Needs to be timestamp or dd.mm.yyyy | [optional] |
| **status** | **Float** | &lt;b&gt;Not supported in sevdesk-Update 2.0.&lt;/b&gt;&lt;br&gt;&lt;br&gt;    Please have a look in &lt;a href&#x3D;&#39;#tag/Voucher/Types-and-status-of-vouchers&#39;&gt;status of vouchers&lt;/a&gt;    to see what the different status codes mean | [optional] |
| **paid_amount** | **Float** | Amount which has already been paid for this voucher by the customer | [optional][readonly] |
| **tax_rule** | [**ModelVoucherTaxRule**](ModelVoucherTaxRule.md) |  | [optional] |
| **tax_type** | **String** | **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the voucher. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used. | [optional] |
| **credit_debit** | **String** | Defines if your voucher is a credit (C) or debit (D) | [optional] |
| **voucher_type** | **String** | Type of the voucher. For more information on the different types, check   &lt;a href&#x3D;&#39;#tag/Voucher/Types-and-status-of-vouchers&#39;&gt;this&lt;/a&gt;   | [optional] |
| **currency** | **String** | specifies which currency the voucher should have. Attention: If the currency differs from the default currency stored in the account, then either the \&quot;propertyForeignCurrencyDeadline\&quot; or \&quot;propertyExchangeRate\&quot; parameter must be specified. If both parameters are specified, then the \&quot;propertyForeignCurrencyDeadline\&quot; parameter is preferred | [optional] |
| **property_foreign_currency_deadline** | **Time** | Defines the exchange rate day and and then the exchange rate is set from sevdesk. Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **property_exchange_rate** | **Float** | Defines the exchange rate | [optional] |
| **tax_set** | [**ModelVoucherUpdateTaxSet**](ModelVoucherUpdateTaxSet.md) |  | [optional] |
| **payment_deadline** | **Time** | Payment deadline of the voucher. | [optional] |
| **delivery_date** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **delivery_date_until** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **document** | [**ModelVoucherDocument**](ModelVoucherDocument.md) |  | [optional] |
| **cost_centre** | [**ModelVoucherCostCentre**](ModelVoucherCostCentre.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelVoucherUpdate.new(
  voucher_date: null,
  supplier: null,
  supplier_name: John Snow,
  description: Voucher-1000,
  pay_date: null,
  status: 50,
  paid_amount: null,
  tax_rule: null,
  tax_type: default,
  credit_debit: C,
  voucher_type: VOU,
  currency: EUR,
  property_foreign_currency_deadline: null,
  property_exchange_rate: 0.8912,
  tax_set: null,
  payment_deadline: null,
  delivery_date: null,
  delivery_date_until: null,
  document: null,
  cost_centre: null
)
```

