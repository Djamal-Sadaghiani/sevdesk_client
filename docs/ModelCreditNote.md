# OpenapiClient::ModelCreditNote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The creditNote id. &lt;span style&#x3D;&#39;color:red&#39;&gt;Required&lt;/span&gt; if you want to create/update an credit note position for an existing credit note\&quot; | [optional] |
| **object_name** | **String** | The creditNote object name |  |
| **map_all** | **Boolean** |  |  |
| **create** | **Time** | Date of creditNote creation | [optional][readonly] |
| **update** | **Time** | Date of last creditNote update | [optional][readonly] |
| **credit_note_number** | **String** | The creditNote number |  |
| **contact** | [**ModelCreditNoteContact**](ModelCreditNoteContact.md) |  |  |
| **credit_note_date** | **Time** | Needs to be provided as timestamp or dd.mm.yyyy |  |
| **status** | **String** | Please have a look in       &lt;a href&#x3D;&#39;#tag/CreditNote/Status-of-credit-notes&#39;&gt;status of credit note&lt;/a&gt;      to see what the different status codes mean |  |
| **header** | **String** | Normally consist of prefix plus the creditNote number |  |
| **head_text** | **String** | Certain html tags can be used here to format your text | [optional] |
| **foot_text** | **String** | Certain html tags can be used here to format your text | [optional] |
| **address_country** | [**ModelCreditNoteAddressCountry**](ModelCreditNoteAddressCountry.md) |  |  |
| **create_user** | [**ModelCreditNoteCreateUser**](ModelCreditNoteCreateUser.md) |  | [optional] |
| **sev_client** | [**ModelCreditNoteSevClient**](ModelCreditNoteSevClient.md) |  | [optional] |
| **small_settlement** | **Boolean** | Defines if the client uses the small settlement scheme.      If yes, the creditNote must not contain any vat | [optional] |
| **contact_person** | [**ModelCreditNoteContactPerson**](ModelCreditNoteContactPerson.md) |  |  |
| **tax_rule** | [**ModelCreditNoteResponseTaxRule**](ModelCreditNoteResponseTaxRule.md) |  |  |
| **tax_rate** | **Float** | This is not used anymore. Use the taxRate of the individual positions instead. |  |
| **tax_set** | [**ModelCreditNoteTaxSet**](ModelCreditNoteTaxSet.md) |  | [optional] |
| **tax_text** | **String** | A common tax text would be &#39;Umsatzsteuer 19%&#39; |  |
| **tax_type** | **String** | **Use this in sevdesk-Update 1.0 (instead of taxRule).**  Tax type of the creditNote. There are four tax types: 1. default - Umsatzsteuer ausweisen 2. eu - Steuerfreie innergemeinschaftliche Lieferung (Europäische Union) 3. noteu - Steuerschuldnerschaft des Leistungsempfängers (außerhalb EU, z. B. Schweiz) 4. custom - Using custom tax set 5. ss - Not subject to VAT according to §19 1 UStG Tax rates are heavily connected to the tax type used. |  |
| **send_date** | **Time** | The date the creditNote was sent to the customer | [optional] |
| **address** | **String** | Complete address of the recipient including name, street, city, zip and country.&lt;br&gt;       Line breaks can be used and will be displayed on the invoice pdf. | [optional] |
| **booking_category** | **String** | Defines the booking category, for more information see the section [Credit note booking categories](#tag/CreditNote/Credit-note-booking-categories)  The booking category of the credit note.  **Must be &lt;code&gt;UNDERACHIEVEMENT&lt;/code&gt; in sevdesk-Update 2.0.** |  |
| **currency** | **String** | Currency used in the creditNote. Needs to be currency code according to ISO-4217 |  |
| **sum_net** | **Float** | Net sum of the creditNote | [optional][readonly] |
| **sum_tax** | **Float** | Tax sum of the creditNote | [optional][readonly] |
| **sum_gross** | **Float** | Gross sum of the creditNote | [optional][readonly] |
| **sum_discounts** | **Float** | Sum of all discounts in the creditNote | [optional][readonly] |
| **sum_net_foreign_currency** | **Float** | Net sum of the creditNote in the foreign currency | [optional][readonly] |
| **sum_tax_foreign_currency** | **Float** | Tax sum of the creditNote in the foreign currency | [optional][readonly] |
| **sum_gross_foreign_currency** | **Float** | Gross sum of the creditNote in the foreign currency | [optional][readonly] |
| **sum_discounts_foreign_currency** | **Float** | Discounts sum of the creditNote in the foreign currency | [optional][readonly] |
| **customer_internal_note** | **String** | Internal note of the customer. Contains data entered into field &#39;Referenz/Bestellnummer&#39; | [optional] |
| **show_net** | **Boolean** | If true, the net amount of each position will be shown on the creditNote. Otherwise gross amount | [optional] |
| **send_type** | **String** | Type which was used to send the creditNote. IMPORTANT: Please refer to the creditNote section of the       *     API-Overview to understand how this attribute can be used before using it! | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelCreditNote.new(
  id: null,
  object_name: CreditNote,
  map_all: null,
  create: 2023-04-18T15:45:38+02:00,
  update: 2023-04-18T15:45:38+02:00,
  credit_note_number: GU-1000,
  contact: null,
  credit_note_date: null,
  status: 100,
  header: My GU-1000,
  head_text: null,
  foot_text: null,
  address_country: null,
  create_user: null,
  sev_client: null,
  small_settlement: false,
  contact_person: null,
  tax_rule: null,
  tax_rate: 0,
  tax_set: null,
  tax_text: Umsatzsteuer 19%,
  tax_type: default,
  send_date: null,
  address: null,
  booking_category: PROVISION,
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

