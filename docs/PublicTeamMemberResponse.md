# Emailguard::PublicTeamMemberResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** | When the member joined the team (RFC3339). |  |
| **email** | **String** | Member login email. |  |
| **emoji** | **String** | User profile emoji. | [optional] |
| **first_name** | **String** | Member given name. |  |
| **id** | **String** | Team membership record ID. |  |
| **last_name** | **String** | Member family name. |  |
| **notes** | **String** | Internal notes stored on the membership. | [optional] |
| **role** | **String** | Team role (for example Owner, Admin, Member). |  |
| **user_id** | **String** | User account ID for this member. |  |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::PublicTeamMemberResponse.new(
  created_at: null,
  email: null,
  emoji: null,
  first_name: null,
  id: null,
  last_name: null,
  notes: null,
  role: null,
  user_id: null
)
```

