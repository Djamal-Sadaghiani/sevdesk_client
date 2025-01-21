# OpenapiClient::CreateClearingAccountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The check account id | [optional] |
| **object_name** | **String** | The check account object name, always &#39;CheckAccount&#39; | [optional] |
| **create** | **Time** | Date of check account creation | [optional] |
| **update** | **Time** | Date of last check account update | [optional] |
| **sev_client** | [**CreateFileImportAccountResponseSevClient**](CreateFileImportAccountResponseSevClient.md) |  | [optional] |
| **name** | **String** | Name of the check account | [optional] |
| **type** | **String** | The type of the check account. Clearing accounts are regarded as offline. | [optional] |
| **currency** | **String** | The currency of the check account. | [optional] |
| **default_account** | **String** | Defines if this check account is the default account. | [optional][default to &#39;0&#39;] |
| **status** | **String** | Status of the check account. 0 &lt;-&gt; Archived - 100 &lt;-&gt; Active | [optional][default to &#39;100&#39;] |
| **accounting_number** | **String** | The booking account used for this clearing account. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateClearingAccountResponse.new(
  id: 2,
  object_name: CheckAccount,
  create: 2024-06-28T14:42:58+02:00,
  update: 2024-06-28T14:42:58+02:00,
  sev_client: null,
  name: Coupons,
  type: offline,
  currency: EUR,
  default_account: null,
  status: 100,
  accounting_number: 3320
)
```

