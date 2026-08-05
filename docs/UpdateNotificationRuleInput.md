# Emailguard::UpdateNotificationRuleInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | [**Array&lt;NotificationRuleChannelInput&gt;**](NotificationRuleChannelInput.md) | Replaces all channel targets when provided. | [optional] |
| **conditions** | **Hash&lt;String, Object&gt;** | Updated conditions. Omit to leave unchanged. | [optional] |
| **description** | **String** | Updated description. Omit to leave unchanged. | [optional] |
| **event_types** | **Array&lt;String&gt;** | Updated event types. Omit to leave unchanged. | [optional] |
| **is_enabled** | **Boolean** | Enable or disable delivery for this rule. | [optional] |
| **name** | **String** | Updated display name. Omit to leave unchanged. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::UpdateNotificationRuleInput.new(
  channels: null,
  conditions: null,
  description: null,
  event_types: null,
  is_enabled: null,
  name: null
)
```

