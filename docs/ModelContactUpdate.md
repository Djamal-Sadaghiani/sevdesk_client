# OpenapiClient::ModelContactUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The organization name.&lt;br&gt; Be aware that the type of contact will depend on this attribute.&lt;br&gt; If it holds a value, the contact will be regarded as an organization. | [optional] |
| **status** | **Integer** | Defines the status of the contact. 100 &lt;-&gt; Lead - 500 &lt;-&gt; Pending - 1000 &lt;-&gt; Active. | [optional][default to 100] |
| **customer_number** | **String** | The customer number | [optional] |
| **parent** | [**ModelContactUpdateParent**](ModelContactUpdateParent.md) |  | [optional] |
| **surename** | **String** | The &lt;b&gt;first&lt;/b&gt; name of the contact.&lt;br&gt; Yeah... not quite right in literally every way. We know.&lt;br&gt; Not to be used for organizations. | [optional] |
| **familyname** | **String** | The last name of the contact.&lt;br&gt; Not to be used for organizations. | [optional] |
| **titel** | **String** | A non-academic title for the contact. Not to be used for organizations. | [optional] |
| **category** | [**ModelContactUpdateCategory**](ModelContactUpdateCategory.md) |  | [optional] |
| **description** | **String** | A description for the contact. | [optional] |
| **academic_title** | **String** | A academic title for the contact. Not to be used for organizations. | [optional] |
| **gender** | **String** | Gender of the contact.&lt;br&gt; Not to be used for organizations. | [optional] |
| **name2** | **String** | Second name of the contact.&lt;br&gt; Not to be used for organizations. | [optional] |
| **birthday** | **Date** | Birthday of the contact.&lt;br&gt; Not to be used for organizations. | [optional] |
| **vat_number** | **String** | Vat number of the contact. | [optional] |
| **bank_account** | **String** | Bank account number (IBAN) of the contact. | [optional] |
| **bank_number** | **String** | Bank number of the bank used by the contact. | [optional] |
| **default_cashback_time** | **Integer** | Absolute time in days which the contact has to pay his invoices and subsequently get a cashback. | [optional] |
| **default_cashback_percent** | **Float** | Percentage of the invoice sum the contact gets back if he paid invoices in time. | [optional] |
| **default_time_to_pay** | **Integer** | The payment goal in days which is set for every invoice of the contact. | [optional] |
| **tax_number** | **String** | The tax number of the contact. | [optional] |
| **tax_office** | **String** | The tax office of the contact (only for greek customers). | [optional] |
| **exempt_vat** | **Boolean** | Defines if the contact is freed from paying vat. | [optional] |
| **default_discount_amount** | **Float** | The default discount the contact gets for every invoice.&lt;br&gt; Depending on defaultDiscountPercentage attribute, in percent or absolute value. | [optional] |
| **default_discount_percentage** | **Boolean** | Defines if the discount is a percentage (true) or an absolute value (false). | [optional] |
| **buyer_reference** | **String** | Buyer reference of the contact. | [optional] |
| **government_agency** | **Boolean** | Defines whether the contact is a government agency (true) or not (false). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactUpdate.new(
  name: null,
  status: null,
  customer_number: Customer-1337,
  parent: null,
  surename: John,
  familyname: Snow,
  titel: Commander,
  category: null,
  description: Rightful king of the seven kingdoms,
  academic_title: null,
  gender: null,
  name2: Targaryen,
  birthday: null,
  vat_number: null,
  bank_account: null,
  bank_number: null,
  default_cashback_time: null,
  default_cashback_percent: null,
  default_time_to_pay: null,
  tax_number: null,
  tax_office: null,
  exempt_vat: null,
  default_discount_amount: null,
  default_discount_percentage: null,
  buyer_reference: null,
  government_agency: null
)
```

