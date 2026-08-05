# Emailguard::NotificationRuleChannelResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Linked custom channel ID, if any. | [optional] |
| **channel_name** | **String** | Name of the linked channel, when resolved. | [optional] |
| **channel_type** | **String** | Type of the linked channel, when resolved. | [optional] |
| **id** | **String** | Assignment record ID. | [optional] |
| **predefined** | **String** | Built-in channel identifier when not using a custom channel. | [optional] |
| **target_user_id** | **String** | User ID when delivery is scoped to one member. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::NotificationRuleChannelResponse.new(
  channel_id: null,
  channel_name: null,
  channel_type: null,
  id: null,
  predefined: null,
  target_user_id: null
)
```

