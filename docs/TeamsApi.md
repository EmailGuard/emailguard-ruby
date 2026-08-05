# Emailguard::TeamsApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_get**](TeamsApi.md#api_v1_team_get) | **GET** /api/v1/team | Get team |
| [**api_v1_team_patch**](TeamsApi.md#api_v1_team_patch) | **PATCH** /api/v1/team | Update team |


## api_v1_team_get

> <GetPublicTeamResponse> api_v1_team_get

Get team

Returns profile fields for the team associated with your API key.

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

api_instance = Emailguard::TeamsApi.new

begin
  # Get team
  result = api_instance.api_v1_team_get
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling TeamsApi->api_v1_team_get: #{e}"
end
```

#### Using the api_v1_team_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPublicTeamResponse>, Integer, Hash)> api_v1_team_get_with_http_info

```ruby
begin
  # Get team
  data, status_code, headers = api_instance.api_v1_team_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPublicTeamResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling TeamsApi->api_v1_team_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPublicTeamResponse**](GetPublicTeamResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_patch

> <GetPublicTeamResponse> api_v1_team_patch(update_team_input)

Update team

Updates mutable team profile fields (name, emoji, URL, email). Send only the fields you want to change; omitted fields are left unchanged except `name`, which is required on every request.

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

api_instance = Emailguard::TeamsApi.new
update_team_input = Emailguard::UpdateTeamInput.new({name: 'name_example'}) # UpdateTeamInput | Team profile fields to update

begin
  # Update team
  result = api_instance.api_v1_team_patch(update_team_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling TeamsApi->api_v1_team_patch: #{e}"
end
```

#### Using the api_v1_team_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPublicTeamResponse>, Integer, Hash)> api_v1_team_patch_with_http_info(update_team_input)

```ruby
begin
  # Update team
  data, status_code, headers = api_instance.api_v1_team_patch_with_http_info(update_team_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPublicTeamResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling TeamsApi->api_v1_team_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_team_input** | [**UpdateTeamInput**](UpdateTeamInput.md) | Team profile fields to update |  |

### Return type

[**GetPublicTeamResponse**](GetPublicTeamResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

