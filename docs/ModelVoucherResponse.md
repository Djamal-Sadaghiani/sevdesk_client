# OpenapiClient::ModelVoucherResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The voucher id | [optional][readonly] |
| **object_name** | **String** | The voucher object name | [optional][readonly] |
| **map_all** | **Boolean** |  | [optional] |
| **create** | **Time** | Date of voucher creation | [optional][readonly] |
| **update** | **Time** | Date of last voucher update | [optional][readonly] |
| **sev_client** | [**ModelVoucherResponseSevClient**](ModelVoucherResponseSevClient.md) |  | [optional] |
| **create_user** | [**ModelVoucherResponseCreateUser**](ModelVoucherResponseCreateUser.md) |  | [optional] |
| **voucher_date** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **supplier** | [**ModelVoucherResponseSupplier**](ModelVoucherResponseSupplier.md) |  | [optional] |
| **supplier_name** | **String** | The supplier name.&lt;br&gt;       The value you provide here will determine what supplier name is shown for the voucher in case you did not provide a supplier. | [optional] |
| **description** | **String** | The description of the voucher. Essentially the voucher number. | [optional] |
| **document** | [**ModelVoucherResponseDocument**](ModelVoucherResponseDocument.md) |  | [optional] |
| **pay_date** | **Time** | Needs to be timestamp or dd.mm.yyyy | [optional] |
| **status** | **String** | Please have a look in       &lt;a href&#x3D;&#39;#tag/Voucher/Types-and-status-of-vouchers&#39;&gt;status of vouchers&lt;/a&gt;      to see what the different status codes mean | [optional] |
| **sum_net** | **String** | Net sum of the voucher | [optional][readonly] |
| **sum_tax** | **String** | Tax sum of the voucher | [optional][readonly] |
| **sum_gross** | **String** | Gross sum of the voucher | [optional][readonly] |
| **sum_net_accounting** | **String** | Net accounting sum of the voucher. Is usually the same as sumNet | [optional][readonly] |
| **sum_tax_accounting** | **String** | Tax accounting sum of the voucher. Is usually the same as sumTax | [optional][readonly] |
| **sum_gross_accounting** | **String** | Gross accounting sum of the voucher. Is usually the same as sumGross | [optional][readonly] |
| **sum_discounts** | **String** | Sum of all discounts in the voucher | [optional][readonly] |
| **sum_discounts_foreign_currency** | **String** | Discounts sum of the voucher in the foreign currency | [optional][readonly] |
| **paid_amount** | **Float** | Amount which has already been paid for this voucher by the customer | [optional][readonly] |
| **tax_rule** | [**ModelVoucherTaxRule**](ModelVoucherTaxRule.md) |  | [optional] |
| **tax_type** | **String** | **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the voucher. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used. | [optional] |
| **credit_debit** | **String** | Defines if your voucher is a credit (C) or debit (D) | [optional] |
| **cost_centre** | [**ModelVoucherResponseCostCentre**](ModelVoucherResponseCostCentre.md) |  | [optional] |
| **voucher_type** | **String** | Type of the voucher. For more information on the different types, check       &lt;a href&#x3D;&#39;#tag/Voucher/Types-and-status-of-vouchers&#39;&gt;this&lt;/a&gt;   | [optional] |
| **currency** | **String** | specifies which currency the voucher should have. Attention: If the currency differs from the default currency stored in the account, then either the \&quot;propertyForeignCurrencyDeadline\&quot; or \&quot;propertyExchangeRate\&quot; parameter must be specified. If both parameters are specified, then the \&quot;propertyForeignCurrencyDeadline\&quot; parameter is preferred | [optional] |
| **property_foreign_currency_deadline** | **Time** | Defines the exchange rate day and and then the exchange rate is set from sevdesk. Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **property_exchange_rate** | **String** | Defines the exchange rate | [optional] |
| **recurring_interval** | **String** | The DateInterval in which recurring vouchers are generated.&lt;br&gt;       Necessary attribute for all recurring vouchers. | [optional] |
| **recurring_start_date** | **Time** | The date when the recurring vouchers start being generated.&lt;br&gt;       Necessary attribute for all recurring vouchers. | [optional] |
| **recurring_next_voucher** | **Time** | The date when the next voucher should be generated.&lt;br&gt;       Necessary attribute for all recurring vouchers. | [optional] |
| **recurring_last_voucher** | **Time** | The date when the last voucher was generated. | [optional] |
| **recurring_end_date** | **Time** | The date when the recurring vouchers end being generated.&lt;br&gt;      Necessary attribute for all recurring vouchers. | [optional] |
| **enshrined** | **Time** | Enshrined vouchers cannot be changed. Can only be set via [Voucher/{voucherId}/enshrine](#tag/Voucher/operation/voucherEnshrine). This operation cannot be undone. | [optional][readonly] |
| **tax_set** | [**ModelVoucherResponseTaxSet**](ModelVoucherResponseTaxSet.md) |  | [optional] |
| **payment_deadline** | **Time** | Payment deadline of the voucher. | [optional] |
| **delivery_date** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **delivery_date_until** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelVoucherResponse.new(
  id: 0,
  object_name: null,
  map_all: true,
  create: null,
  update: null,
  sev_client: null,
  create_user: null,
  voucher_date: null,
  supplier: null,
  supplier_name: John Snow,
  description: Voucher-1000,
  document: null,
  pay_date: null,
  status: 50,
  sum_net: 0,
  sum_tax: 0,
  sum_gross: 0,
  sum_net_accounting: 0,
  sum_tax_accounting: 0,
  sum_gross_accounting: 0,
  sum_discounts: 0,
  sum_discounts_foreign_currency: 0,
  paid_amount: 0,
  tax_rule: null,
  tax_type: default,
  credit_debit: C,
  cost_centre: null,
  voucher_type: VOU,
  currency: EUR,
  property_foreign_currency_deadline: null,
  property_exchange_rate: 0.8912,
  recurring_interval: null,
  recurring_start_date: null,
  recurring_next_voucher: null,
  recurring_last_voucher: null,
  recurring_end_date: null,
  enshrined: 2024-04-08T00:00+02:00,
  tax_set: null,
  payment_deadline: null,
  delivery_date: null,
  delivery_date_until: null
)
```

