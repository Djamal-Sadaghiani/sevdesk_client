# OpenapiClient::InvoiceResetToOpen200ResponseObjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The invoice id | [optional][readonly] |
| **object_name** | **String** | The invoice object name | [optional][readonly] |
| **invoice_number** | **String** | The invoice number | [optional][readonly] |
| **contact** | [**ModelInvoiceResponseContact**](ModelInvoiceResponseContact.md) |  | [optional] |
| **create** | **Time** | Date of invoice creation | [optional][readonly] |
| **update** | **Time** | Date of last invoice update | [optional][readonly] |
| **sev_client** | [**ModelInvoiceResponseSevClient**](ModelInvoiceResponseSevClient.md) |  | [optional] |
| **invoice_date** | **String** | The invoice date. | [optional][readonly] |
| **header** | **String** | Normally consist of prefix plus the invoice number | [optional][readonly] |
| **head_text** | **String** | Certain html tags can be used here to format your text | [optional][readonly] |
| **foot_text** | **String** | Certain html tags can be used here to format your text | [optional][readonly] |
| **time_to_pay** | **String** | The time the customer has to pay the invoice in days | [optional][readonly] |
| **discount_time** | **String** | If a value other than zero is used for the discount attribute,      you need to specify the amount of days for which the discount is granted. | [optional][readonly] |
| **discount** | **String** | If you want to give a discount, define the percentage here. Otherwise provide zero as value | [optional][readonly] |
| **address_country** | [**ModelInvoiceResponseAddressCountry**](ModelInvoiceResponseAddressCountry.md) |  | [optional] |
| **pay_date** | **Object** |  | [optional] |
| **create_user** | [**ModelCreditNoteResponseCreateUser**](ModelCreditNoteResponseCreateUser.md) |  | [optional] |
| **delivery_date** | **Time** | Timestamp. This can also be a date range if you also use the attribute deliveryDateUntil | [optional][readonly] |
| **status** | **Object** |  | [optional] |
| **small_settlement** | **Boolean** | Defines if the client uses the small settlement scheme.      If yes, the invoice must not contain any vat | [optional][readonly] |
| **contact_person** | [**ModelInvoiceResponseContactPerson**](ModelInvoiceResponseContactPerson.md) |  | [optional] |
| **tax_rate** | **String** | This is not used anymore. Use the taxRate of the individual positions instead. | [optional][readonly] |
| **tax_rule** | [**ModelInvoiceResponseTaxRule**](ModelInvoiceResponseTaxRule.md) |  | [optional] |
| **tax_text** | **String** | A common tax text would be &#39;Umsatzsteuer 19%&#39; | [optional][readonly] |
| **dunning_level** | **String** | Defines how many reminders have already been sent for the invoice.      Starts with 1 (Payment reminder) and should be incremented by one every time another reminder is sent. | [optional][readonly] |
| **tax_type** | **String** | **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the invoice. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used. | [optional][readonly] |
| **payment_method** | [**ModelInvoiceResponsePaymentMethod**](ModelInvoiceResponsePaymentMethod.md) |  | [optional] |
| **cost_centre** | [**ModelInvoiceResponseCostCentre**](ModelInvoiceResponseCostCentre.md) |  | [optional] |
| **send_date** | **Time** | The date the invoice was sent to the customer | [optional][readonly] |
| **origin** | [**ModelInvoiceResponseOrigin**](ModelInvoiceResponseOrigin.md) |  | [optional] |
| **invoice_type** | **String** | Type of the invoice. For more information on the different types, check       &lt;a href&#x3D;&#39;#tag/Invoice/Types-and-status-of-invoices&#39;&gt;this&lt;/a&gt; section   | [optional][readonly] |
| **account_intervall** | **Object** |  | [optional] |
| **account_next_invoice** | **Object** |  | [optional] |
| **reminder_total** | **String** | Total reminder amount | [optional][readonly] |
| **reminder_debit** | **String** | Debit of the reminder | [optional][readonly] |
| **reminder_deadline** | **Time** | Deadline of the reminder as timestamp | [optional][readonly] |
| **reminder_charge** | **String** | The additional reminder charge | [optional][readonly] |
| **tax_set** | [**ModelInvoiceResponseTaxSet**](ModelInvoiceResponseTaxSet.md) |  | [optional] |
| **address** | **String** | Complete address of the recipient including name, street, city, zip and country.       * Line breaks can be used and will be displayed on the invoice pdf. | [optional][readonly] |
| **currency** | **String** | Currency used in the invoice. Needs to be currency code according to ISO-4217 | [optional][readonly] |
| **sum_net** | **String** | Net sum of the invoice | [optional][readonly] |
| **sum_tax** | **String** | Tax sum of the invoice | [optional][readonly] |
| **sum_gross** | **String** | Gross sum of the invoice | [optional][readonly] |
| **sum_discounts** | **String** | Sum of all discounts in the invoice | [optional][readonly] |
| **sum_net_foreign_currency** | **String** | Net sum of the invoice in the foreign currency | [optional][readonly] |
| **sum_tax_foreign_currency** | **String** | Tax sum of the invoice in the foreign currency | [optional][readonly] |
| **sum_gross_foreign_currency** | **String** | Gross sum of the invoice in the foreign currency | [optional][readonly] |
| **sum_discounts_foreign_currency** | **String** | Discounts sum of the invoice in the foreign currency | [optional][readonly] |
| **sum_net_accounting** | **String** | Net accounting sum of the invoice. Is usually the same as sumNet | [optional][readonly] |
| **sum_tax_accounting** | **String** | Tax accounting sum of the invoice. Is usually the same as sumTax | [optional][readonly] |
| **sum_gross_accounting** | **String** | Gross accounting sum of the invoice. Is usually the same as sumGross | [optional][readonly] |
| **paid_amount** | **Float** | Amount which has already been paid for this invoice by the customer | [optional][readonly] |
| **customer_internal_note** | **String** | Internal note of the customer. Contains data entered into field &#39;Referenz/Bestellnummer&#39; | [optional][readonly] |
| **show_net** | **Boolean** | If true, the net amount of each position will be shown on the invoice. Otherwise gross amount | [optional][readonly] |
| **enshrined** | **Object** |  | [optional] |
| **send_type** | **String** | Type which was used to send the invoice. IMPORTANT: Please refer to the invoice section of the       *     API-Overview to understand how this attribute can be used before using it! | [optional][readonly] |
| **delivery_date_until** | **String** | If the delivery date should be a time range, another timestamp can be provided in this attribute       * to define a range from timestamp used in deliveryDate attribute to the timestamp used here. | [optional][readonly] |
| **datev_connect_online** | **Object** | Internal attribute | [optional][readonly] |
| **send_payment_received_notification_date** | **String** | Internal attribute | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvoiceResetToOpen200ResponseObjects.new(
  id: 1,
  object_name: Invoice,
  invoice_number: RE-1000,
  contact: null,
  create: 2024-04-08T00:00+02:00,
  update: 2024-04-08T00:00+02:00,
  sev_client: null,
  invoice_date: 2024-04-08T00:00:00+02:00,
  header: My RE-1000,
  head_text: header information,
  foot_text: footer information,
  time_to_pay: 10,
  discount_time: 0,
  discount: 0,
  address_country: null,
  pay_date: null,
  create_user: null,
  delivery_date: 2024-04-08T00:00+02:00,
  status: 200,
  small_settlement: false,
  contact_person: null,
  tax_rate: 0,
  tax_rule: null,
  tax_text: Umsatzsteuer 19%,
  dunning_level: 0,
  tax_type: default,
  payment_method: null,
  cost_centre: null,
  send_date: 2024-04-08T00:00+02:00,
  origin: null,
  invoice_type: RE,
  account_intervall: null,
  account_next_invoice: null,
  reminder_total: 0,
  reminder_debit: 0,
  reminder_deadline: null,
  reminder_charge: 0,
  tax_set: null,
  address: name
street
postCode city,
  currency: EUR,
  sum_net: 100,
  sum_tax: 19,
  sum_gross: 119,
  sum_discounts: 0,
  sum_net_foreign_currency: 0,
  sum_tax_foreign_currency: 0,
  sum_gross_foreign_currency: 0,
  sum_discounts_foreign_currency: 0,
  sum_net_accounting: 0,
  sum_tax_accounting: 0,
  sum_gross_accounting: 0,
  paid_amount: 0,
  customer_internal_note: null,
  show_net: false,
  enshrined: null,
  send_type: null,
  delivery_date_until: 2024-04-08T00:00:00+02:00,
  datev_connect_online: null,
  send_payment_received_notification_date: 0
)
```

