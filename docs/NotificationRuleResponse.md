# Emailguard::NotificationRuleResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channels** | [**Array&lt;NotificationRuleChannelResponse&gt;**](NotificationRuleChannelResponse.md) | Channel targets notified when the rule matches. | [optional] |
| **conditions** | **Hash&lt;String, Object&gt;** | Optional conditions (e.g. usage threshold percents). | [optional] |
| **created_at** | **String** | When the rule was created (RFC3339). | [optional] |
| **description** | **String** | Optional longer description. | [optional] |
| **event_types** | **Array&lt;String&gt;** | Event types that trigger this rule. | [optional] |
| **id** | **String** | Rule record ID. | [optional] |
| **is_enabled** | **Boolean** | Whether the rule is actively delivering events. | [optional] |
| **name** | **String** | Display name for the rule. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::NotificationRuleResponse.new(
  channels: null,
  conditions: null,
  created_at: null,
  description: null,
  event_types: null,
  id: null,
  is_enabled: null,
  name: null
)
```

