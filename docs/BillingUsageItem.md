# Emailguard::BillingUsageItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;BillingUsageEvent&gt;**](BillingUsageEvent.md) |  | [optional] |
| **feature_key** | **String** |  |  |
| **limit** | **Integer** |  | [optional] |
| **period_end** | **String** |  |  |
| **period_start** | **String** |  |  |
| **usage** | **Integer** |  |  |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::BillingUsageItem.new(
  events: null,
  feature_key: null,
  limit: null,
  period_end: null,
  period_start: null,
  usage: null
)
```

