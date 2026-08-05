# Emailguard::CreateNotificationRuleInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | [**Array&lt;NotificationRuleChannelInput&gt;**](NotificationRuleChannelInput.md) | One or more channel targets to notify when matching events occur. |  |
| **conditions** | **Hash&lt;String, Object&gt;** | Optional rule conditions (e.g. usage_threshold for USAGE_API_THRESHOLD). | [optional] |
| **description** | **String** | Optional longer description of what the rule does. | [optional] |
| **event_types** | **Array&lt;String&gt;** | Event type identifiers this rule listens for (at least one required). |  |
| **is_enabled** | **Boolean** | When false, the rule is stored but does not deliver events. | [optional] |
| **name** | **String** | Display name for the rule. |  |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::CreateNotificationRuleInput.new(
  channels: null,
  conditions: null,
  description: null,
  event_types: null,
  is_enabled: null,
  name: null
)
```

