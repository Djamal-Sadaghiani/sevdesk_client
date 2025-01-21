# OpenapiClient::ModelOrderResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The order id | [optional][readonly] |
| **object_name** | **String** | The order object name | [optional][readonly] |
| **create** | **Time** | Date of order creation | [optional][readonly] |
| **update** | **Time** | Date of last order update | [optional][readonly] |
| **order_number** | **String** | The order number | [optional] |
| **contact** | [**ModelOrderResponseContact**](ModelOrderResponseContact.md) |  | [optional] |
| **order_date** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy | [optional] |
| **status** | **String** | Please have a look in       &lt;a href&#x3D;&#39;#tag/Order/Types-and-status-of-orders&#39;&gt;status of orders&lt;/a&gt;      to see what the different status codes mean | [optional] |
| **header** | **String** | Normally consist of prefix plus the order number | [optional] |
| **head_text** | **String** | Certain html tags can be used here to format your text | [optional] |
| **foot_text** | **String** | Certain html tags can be used here to format your text | [optional] |
| **address_country** | [**ModelOrderResponseAddressCountry**](ModelOrderResponseAddressCountry.md) |  | [optional] |
| **create_user** | [**ModelOrderResponseCreateUser**](ModelOrderResponseCreateUser.md) |  | [optional] |
| **sev_client** | [**ModelOrderResponseSevClient**](ModelOrderResponseSevClient.md) |  | [optional] |
| **delivery_terms** | **String** | Delivery terms of the order | [optional] |
| **payment_terms** | **String** | Payment terms of the order | [optional] |
| **origin** | [**ModelOrderResponseOrigin**](ModelOrderResponseOrigin.md) |  | [optional] |
| **version** | **String** | Version of the order.&lt;br&gt;      Can be used if you have multiple drafts for the same order.&lt;br&gt;      Should start with 0 | [optional] |
| **small_settlement** | **Boolean** | Defines if the client uses the small settlement scheme.      If yes, the order must not contain any vat | [optional] |
| **contact_person** | [**ModelOrderResponseContactPerson**](ModelOrderResponseContactPerson.md) |  | [optional] |
| **tax_rate** | **String** | This is not used anymore. Use the taxRate of the individual positions instead. | [optional] |
| **tax_rule** | [**ModelOrderResponseTaxRule**](ModelOrderResponseTaxRule.md) |  | [optional] |
| **tax_set** | [**ModelOrderResponseTaxSet**](ModelOrderResponseTaxSet.md) |  | [optional] |
| **tax_text** | **String** | A common tax text would be &#39;Umsatzsteuer 19%&#39; | [optional] |
| **tax_type** | **String** | **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the order. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used. | [optional] |
| **order_type** | **String** | Type of the order. For more information on the different types, check      &lt;a href&#x3D;&#39;#tag/Order/Types-and-status-of-orders&#39;&gt;this&lt;/a&gt;   | [optional] |
| **send_date** | **Time** | The date the order was sent to the customer | [optional] |
| **address** | **String** | Complete address of the recipient including name, street, city, zip and country.&lt;br&gt;       Line breaks can be used and will be displayed on the invoice pdf. | [optional] |
| **currency** | **String** | Currency used in the order. Needs to be currency code according to ISO-4217 | [optional] |
| **sum_net** | **String** | Net sum of the order | [optional][readonly] |
| **sum_tax** | **String** | Tax sum of the order | [optional][readonly] |
| **sum_gross** | **String** | Gross sum of the order | [optional][readonly] |
| **sum_discounts** | **String** | Sum of all discounts in the order | [optional][readonly] |
| **sum_net_foreign_currency** | **String** | Net sum of the order in the foreign currency | [optional][readonly] |
| **sum_tax_foreign_currency** | **String** | Tax sum of the order in the foreign currency | [optional][readonly] |
| **sum_gross_foreign_currency** | **String** | Gross sum of the order in the foreign currency | [optional][readonly] |
| **sum_discounts_foreign_currency** | **String** | Discounts sum of the order in the foreign currency | [optional][readonly] |
| **customer_internal_note** | **String** | Internal note of the customer. Contains data entered into field &#39;Referenz/Bestellnummer&#39; | [optional] |
| **show_net** | **Boolean** | If true, the net amount of each position will be shown on the order. Otherwise gross amount | [optional] |
| **send_type** | **String** | Type which was used to send the order. IMPORTANT: Please refer to the order section of the       *     API-Overview to understand how this attribute can be used before using it! | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelOrderResponse.new(
  id: 0,
  object_name: Order,
  create: null,
  update: null,
  order_number: Offer-1000,
  contact: null,
  order_date: null,
  status: 100,
  header: My Offer-1000,
  head_text: null,
  foot_text: null,
  address_country: null,
  create_user: null,
  sev_client: null,
  delivery_terms: null,
  payment_terms: null,
  origin: null,
  version: 0,
  small_settlement: false,
  contact_person: null,
  tax_rate: 0,
  tax_rule: null,
  tax_set: null,
  tax_text: Umsatzsteuer 19%,
  tax_type: default,
  order_type: AN,
  send_date: null,
  address: null,
  currency: EUR,
  sum_net: null,
  sum_tax: null,
  sum_gross: null,
  sum_discounts: null,
  sum_net_foreign_currency: null,
  sum_tax_foreign_currency: null,
  sum_gross_foreign_currency: null,
  sum_discounts_foreign_currency: null,
  customer_internal_note: null,
  show_net: false,
  send_type: null
)
```

