# Emailguard::UpdateTeamInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Contact email address for the team workspace. | [optional] |
| **emoji** | **String** | Single grapheme emoji shown as the team avatar in the product UI. | [optional] |
| **name** | **String** | Human-readable team name. |  |
| **url** | **String** | Public website URL for the team. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::UpdateTeamInput.new(
  email: null,
  emoji: null,
  name: null,
  url: null
)
```

