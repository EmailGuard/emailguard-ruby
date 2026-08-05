# Emailguard::MembersApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_members_get**](MembersApi.md#api_v1_team_members_get) | **GET** /api/v1/team/members | List team members |
| [**api_v1_team_members_user_id_delete**](MembersApi.md#api_v1_team_members_user_id_delete) | **DELETE** /api/v1/team/members/{userId} | Remove a team member |
| [**api_v1_team_members_user_id_patch**](MembersApi.md#api_v1_team_members_user_id_patch) | **PATCH** /api/v1/team/members/{userId} | Update a team member role |


## api_v1_team_members_get

> <ListPublicTeamMembersResponse> api_v1_team_members_get

List team members

Returns every member of the team, including role, profile fields, and join timestamp. Use the `user_id` field when calling member update or remove routes.

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

api_instance = Emailguard::MembersApi.new

begin
  # List team members
  result = api_instance.api_v1_team_members_get
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling MembersApi->api_v1_team_members_get: #{e}"
end
```

#### Using the api_v1_team_members_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPublicTeamMembersResponse>, Integer, Hash)> api_v1_team_members_get_with_http_info

```ruby
begin
  # List team members
  data, status_code, headers = api_instance.api_v1_team_members_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPublicTeamMembersResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling MembersApi->api_v1_team_members_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPublicTeamMembersResponse**](ListPublicTeamMembersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_members_user_id_delete

> <MessageResponse> api_v1_team_members_user_id_delete(user_id)

Remove a team member

Removes a user from the team. Identify the member by user account UUID in the path. The team owner cannot be removed through this endpoint.

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

api_instance = Emailguard::MembersApi.new
user_id = 'user_id_example' # String | User account UUID of the member to remove

begin
  # Remove a team member
  result = api_instance.api_v1_team_members_user_id_delete(user_id)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling MembersApi->api_v1_team_members_user_id_delete: #{e}"
end
```

#### Using the api_v1_team_members_user_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_members_user_id_delete_with_http_info(user_id)

```ruby
begin
  # Remove a team member
  data, status_code, headers = api_instance.api_v1_team_members_user_id_delete_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling MembersApi->api_v1_team_members_user_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User account UUID of the member to remove |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_members_user_id_patch

> <MessageResponse> api_v1_team_members_user_id_patch(user_id, update_team_member_input)

Update a team member role

Changes a member's role or internal notes. Identify the member by user account UUID in the path (not the team membership record ID).

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

api_instance = Emailguard::MembersApi.new
user_id = 'user_id_example' # String | User account UUID of the member to update
update_team_member_input = Emailguard::UpdateTeamMemberInput.new({id: 'id_example'}) # UpdateTeamMemberInput | New role and/or notes for the member

begin
  # Update a team member role
  result = api_instance.api_v1_team_members_user_id_patch(user_id, update_team_member_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling MembersApi->api_v1_team_members_user_id_patch: #{e}"
end
```

#### Using the api_v1_team_members_user_id_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_members_user_id_patch_with_http_info(user_id, update_team_member_input)

```ruby
begin
  # Update a team member role
  data, status_code, headers = api_instance.api_v1_team_members_user_id_patch_with_http_info(user_id, update_team_member_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling MembersApi->api_v1_team_members_user_id_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User account UUID of the member to update |  |
| **update_team_member_input** | [**UpdateTeamMemberInput**](UpdateTeamMemberInput.md) | New role and/or notes for the member |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

