# Emailguard::UpdateNotificationChannelInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | **Hash&lt;String, Object&gt;** | Updated type-specific configuration. Omit to leave unchanged. | [optional] |
| **name** | **String** | Updated display name. Omit to leave unchanged. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::UpdateNotificationChannelInput.new(
  config: null,
  name: null
)
```

