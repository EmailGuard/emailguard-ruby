# Emailguard::UpdateTeamMemberInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Internal team member record ID. When calling the public API, this is set from the path userId. |  |
| **notes** | **String** | Internal notes about the member. Omit to leave unchanged. | [optional] |
| **role** | **String** | New team role (for example Owner, Admin, Member). Omit to leave unchanged. See [Team roles and permissions](/docs/knowledge-base/team-roles-and-permissions). | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::UpdateTeamMemberInput.new(
  id: null,
  notes: null,
  role: null
)
```

