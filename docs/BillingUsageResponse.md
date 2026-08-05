# Emailguard::BillingUsageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Machine-readable status code (for example OK or INVALID_BODY). |  |
| **data** | [**Array&lt;BillingUsageItem&gt;**](BillingUsageItem.md) |  | [optional] |
| **message** | **String** | Human-readable detail when the code is not OK. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::BillingUsageResponse.new(
  code: null,
  data: null,
  message: null
)
```

