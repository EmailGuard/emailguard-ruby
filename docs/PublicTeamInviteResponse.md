# Emailguard::PublicTeamInviteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address the invite was sent to. |  |
| **expires_at** | **String** | When the invite expires if not accepted (RFC3339). |  |
| **id** | **String** | Invite record ID. |  |
| **role** | **String** | Role the invitee will receive when they accept. |  |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::PublicTeamInviteResponse.new(
  email: null,
  expires_at: null,
  id: null,
  role: null
)
```

