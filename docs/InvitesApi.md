# Emailguard::InvitesApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_members_invites_get**](InvitesApi.md#api_v1_team_members_invites_get) | **GET** /api/v1/team/members/invites | List pending team invites |
| [**api_v1_team_members_invites_invite_id_delete**](InvitesApi.md#api_v1_team_members_invites_invite_id_delete) | **DELETE** /api/v1/team/members/invites/{inviteId} | Cancel a pending invite |
| [**api_v1_team_members_invites_post**](InvitesApi.md#api_v1_team_members_invites_post) | **POST** /api/v1/team/members/invites | Invite a team member |


## api_v1_team_members_invites_get

> <ListPublicTeamInvitesResponse> api_v1_team_members_invites_get

List pending team invites

Returns invites that have not yet been accepted or expired. Each invite includes the target email, assigned role, and expiry time.

### Examples

```ruby
require 'time'
require 'emailguard_sdk'
# setup authorization
Emailguard.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Emailguard::InvitesApi.new

begin
  # List pending team invites
  result = api_instance.api_v1_team_members_invites_get
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling InvitesApi->api_v1_team_members_invites_get: #{e}"
end
```

#### Using the api_v1_team_members_invites_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPublicTeamInvitesResponse>, Integer, Hash)> api_v1_team_members_invites_get_with_http_info

```ruby
begin
  # List pending team invites
  data, status_code, headers = api_instance.api_v1_team_members_invites_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPublicTeamInvitesResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling InvitesApi->api_v1_team_members_invites_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPublicTeamInvitesResponse**](ListPublicTeamInvitesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_members_invites_invite_id_delete

> <MessageResponse> api_v1_team_members_invites_invite_id_delete(invite_id)

Cancel a pending invite

Revokes a pending invite so it can no longer be accepted. The invite is identified by its UUID from the list invites response.

### Examples

```ruby
require 'time'
require 'emailguard_sdk'
# setup authorization
Emailguard.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Emailguard::InvitesApi.new
invite_id = 'invite_id_example' # String | UUID of the pending invite to cancel

begin
  # Cancel a pending invite
  result = api_instance.api_v1_team_members_invites_invite_id_delete(invite_id)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling InvitesApi->api_v1_team_members_invites_invite_id_delete: #{e}"
end
```

#### Using the api_v1_team_members_invites_invite_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_members_invites_invite_id_delete_with_http_info(invite_id)

```ruby
begin
  # Cancel a pending invite
  data, status_code, headers = api_instance.api_v1_team_members_invites_invite_id_delete_with_http_info(invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling InvitesApi->api_v1_team_members_invites_invite_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_id** | **String** | UUID of the pending invite to cancel |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_members_invites_post

> <MessageResponse> api_v1_team_members_invites_post(invite_team_member_input)

Invite a team member

Sends an email invite to join the team with the specified role. The invitee must accept before they appear in the members list.

### Examples

```ruby
require 'time'
require 'emailguard_sdk'
# setup authorization
Emailguard.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Emailguard::InvitesApi.new
invite_team_member_input = Emailguard::InviteTeamMemberInput.new({email: 'email_example', role: 'role_example'}) # InviteTeamMemberInput | Invitee email and role to assign on acceptance

begin
  # Invite a team member
  result = api_instance.api_v1_team_members_invites_post(invite_team_member_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling InvitesApi->api_v1_team_members_invites_post: #{e}"
end
```

#### Using the api_v1_team_members_invites_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_members_invites_post_with_http_info(invite_team_member_input)

```ruby
begin
  # Invite a team member
  data, status_code, headers = api_instance.api_v1_team_members_invites_post_with_http_info(invite_team_member_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling InvitesApi->api_v1_team_members_invites_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_team_member_input** | [**InviteTeamMemberInput**](InviteTeamMemberInput.md) | Invitee email and role to assign on acceptance |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

