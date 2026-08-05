# Emailguard::NotificationRuleChannelInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | UUID of a team notification channel. Use this or predefined, not both. | [optional] |
| **predefined** | **String** | Built-in channel identifier when not using a custom channel. | [optional] |
| **target_user_id** | **String** | Restrict delivery to a specific team member&#39;s user ID. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::NotificationRuleChannelInput.new(
  channel_id: null,
  predefined: null,
  target_user_id: null
)
```

