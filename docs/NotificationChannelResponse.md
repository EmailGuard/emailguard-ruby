# Emailguard::NotificationChannelResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | **Hash&lt;String, Object&gt;** | Type-specific configuration. Sensitive values may be redacted in responses. | [optional] |
| **created_at** | **String** | When the channel was created (RFC3339). | [optional] |
| **id** | **String** | Channel record ID. | [optional] |
| **is_verified** | **Boolean** | Whether the channel has completed verification (email link or webhook test). | [optional] |
| **name** | **String** | Display name in notification settings. | [optional] |
| **type** | **String** | Channel type (for example email or webhook). | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::NotificationChannelResponse.new(
  config: null,
  created_at: null,
  id: null,
  is_verified: null,
  name: null,
  type: null
)
```

