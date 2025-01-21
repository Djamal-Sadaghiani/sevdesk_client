# OpenapiClient::ModelContactResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The contact id | [optional][readonly] |
| **object_name** | **String** | The contact object name | [optional][readonly] |
| **create** | **Time** | Date of contact creation | [optional][readonly] |
| **update** | **Time** | Date of last contact update | [optional][readonly] |
| **name** | **String** | The organization name.&lt;br&gt; Be aware that the type of contact will depend on this attribute.&lt;br&gt; If it holds a value, the contact will be regarded as an organization. | [optional][readonly] |
| **status** | **String** | Defines the status of the contact. 100 &lt;-&gt; Lead - 500 &lt;-&gt; Pending - 1000 &lt;-&gt; Active. | [optional][readonly] |
| **customer_number** | **String** | The customer number | [optional][readonly] |
| **parent** | [**ModelContactResponseParent**](ModelContactResponseParent.md) |  | [optional] |
| **surename** | **String** | The &lt;b&gt;first&lt;/b&gt; name of the contact.&lt;br&gt; Yeah... not quite right in literally every way. We know.&lt;br&gt; Not to be used for organizations. | [optional][readonly] |
| **familyname** | **String** | The last name of the contact.&lt;br&gt; Not to be used for organizations. | [optional][readonly] |
| **titel** | **String** | A non-academic title for the contact. Not to be used for organizations. | [optional][readonly] |
| **category** | [**ModelContactResponseCategory**](ModelContactResponseCategory.md) |  | [optional] |
| **description** | **String** | A description for the contact. | [optional][readonly] |
| **academic_title** | **String** | A academic title for the contact. Not to be used for organizations. | [optional][readonly] |
| **gender** | **String** | Gender of the contact.&lt;br&gt; Not to be used for organizations. | [optional][readonly] |
| **sev_client** | [**ModelContactResponseSevClient**](ModelContactResponseSevClient.md) |  | [optional] |
| **name2** | **String** | Second name of the contact.&lt;br&gt; Not to be used for organizations. | [optional][readonly] |
| **birthday** | **Date** | Birthday of the contact.&lt;br&gt; Not to be used for organizations. | [optional][readonly] |
| **vat_number** | **String** | Vat number of the contact. | [optional][readonly] |
| **bank_account** | **String** | Bank account number (IBAN) of the contact. | [optional][readonly] |
| **bank_number** | **String** | Bank number of the bank used by the contact. | [optional][readonly] |
| **default_cashback_time** | **String** | Absolute time in days which the contact has to pay his invoices and subsequently get a cashback. | [optional][readonly] |
| **default_cashback_percent** | **Float** | Percentage of the invoice sum the contact gets back if he paid invoices in time. | [optional][readonly] |
| **default_time_to_pay** | **String** | The payment goal in days which is set for every invoice of the contact. | [optional][readonly] |
| **tax_number** | **String** | The tax number of the contact. | [optional][readonly] |
| **tax_office** | **String** | The tax office of the contact (only for greek customers). | [optional][readonly] |
| **exempt_vat** | **String** | Defines if the contact is freed from paying vat. | [optional][readonly] |
| **default_discount_amount** | **Float** | The default discount the contact gets for every invoice.&lt;br&gt; Depending on defaultDiscountPercentage attribute, in percent or absolute value. | [optional][readonly] |
| **default_discount_percentage** | **String** | Defines if the discount is a percentage (true) or an absolute value (false). | [optional][readonly] |
| **buyer_reference** | **String** | Buyer reference of the contact. | [optional][readonly] |
| **government_agency** | **String** | Defines whether the contact is a government agency (true) or not (false). | [optional][readonly] |
| **additional_information** | **String** | Additional information stored for the contact. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelContactResponse.new(
  id: 0,
  object_name: Contact,
  create: null,
  update: null,
  name: string,
  status: 100,
  customer_number: Customer-1337,
  parent: null,
  surename: John,
  familyname: Snow,
  titel: Commander,
  category: null,
  description: Rightful king of the seven kingdoms,
  academic_title: null,
  gender: null,
  sev_client: null,
  name2: Targaryen,
  birthday: null,
  vat_number: null,
  bank_account: null,
  bank_number: null,
  default_cashback_time: string,
  default_cashback_percent: string,
  default_time_to_pay: string,
  tax_number: null,
  tax_office: string,
  exempt_vat: false,
  default_discount_amount: string,
  default_discount_percentage: false,
  buyer_reference: string,
  government_agency: false,
  additional_information: string
)
```

