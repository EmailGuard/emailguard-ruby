# Emailguard::InviteTeamMemberInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address that will receive the invite. |  |
| **role** | **String** | Team role to assign when the invite is accepted (for example Owner, Admin, Member). See [Team roles and permissions](/docs/knowledge-base/team-roles-and-permissions). |  |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::InviteTeamMemberInput.new(
  email: null,
  role: null
)
```

