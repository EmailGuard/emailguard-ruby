# Emailguard::PublicTeamResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Contact email for the workspace. | [optional] |
| **emoji** | **String** | Avatar emoji. | [optional] |
| **id** | **String** | Team UUID. | [optional] |
| **name** | **String** | Display name. | [optional] |
| **type** | **String** | Team kind (for example team or personal). | [optional] |
| **url** | **String** | Public website URL. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::PublicTeamResponse.new(
  email: null,
  emoji: null,
  id: null,
  name: null,
  type: null,
  url: null
)
```

