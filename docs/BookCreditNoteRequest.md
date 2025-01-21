# OpenapiClient::BookCreditNoteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount which should be booked. Can also be a partial amount. |  |
| **date** | **Integer** | The booking date. Most likely the current date. |  |
| **type** | **String** | Define a type for the booking.&lt;br&gt;      The following type abbreviations are available (abbreviation &lt;-&gt; meaning).&lt;br&gt;      &lt;ul&gt;  &lt;li&gt;FULL_PAYMENT &lt;-&gt; Normal booking&lt;/li&gt;&lt;li&gt;N &lt;-&gt; Partial booking (historically used for normal booking)&lt;/li&gt;      &lt;li&gt;CB &lt;-&gt; Reduced amount due to discount (skonto)&lt;/li&gt;      &lt;li&gt;CF &lt;-&gt; Reduced/Higher amount due to currency fluctuations (deprecated)&lt;/li&gt;      &lt;li&gt;O &lt;-&gt; Reduced/Higher amount due to other reasons&lt;/li&gt;      &lt;li&gt;OF &lt;-&gt; Higher amount due to reminder charges&lt;/li&gt;      &lt;li&gt;MTC &lt;-&gt; Reduced amount due to the monetary traffic costs&lt;/li&gt;      &lt;/ul&gt; |  |
| **check_account** | [**BookCreditNoteRequestCheckAccount**](BookCreditNoteRequestCheckAccount.md) |  |  |
| **check_account_transaction** | [**BookCreditNoteRequestCheckAccountTransaction**](BookCreditNoteRequestCheckAccountTransaction.md) |  | [optional] |
| **create_feed** | **Boolean** | Determines if a feed is created for the booking process. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BookCreditNoteRequest.new(
  amount: null,
  date: null,
  type: null,
  check_account: null,
  check_account_transaction: null,
  create_feed: null
)
```

