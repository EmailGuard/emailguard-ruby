# Emailguard::CreateNotificationChannelInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | **Hash&lt;String, Object&gt;** | Type-specific configuration (email address, webhook URL, headers, and so on). | [optional] |
| **name** | **String** | Display name shown in team notification settings. |  |
| **type** | **String** | Channel type (for example email or webhook). |  |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::CreateNotificationChannelInput.new(
  config: null,
  name: null,
  type: null
)
```

