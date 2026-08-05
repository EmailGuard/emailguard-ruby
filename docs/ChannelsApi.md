# Emailguard::ChannelsApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_notifications_channels_channel_id_delete**](ChannelsApi.md#api_v1_team_notifications_channels_channel_id_delete) | **DELETE** /api/v1/team/notifications/channels/{channelId} | Delete notification channel |
| [**api_v1_team_notifications_channels_channel_id_put**](ChannelsApi.md#api_v1_team_notifications_channels_channel_id_put) | **PUT** /api/v1/team/notifications/channels/{channelId} | Update notification channel |
| [**api_v1_team_notifications_channels_channel_id_test_post**](ChannelsApi.md#api_v1_team_notifications_channels_channel_id_test_post) | **POST** /api/v1/team/notifications/channels/{channelId}/test | Test notification channel |
| [**api_v1_team_notifications_channels_get**](ChannelsApi.md#api_v1_team_notifications_channels_get) | **GET** /api/v1/team/notifications/channels | List notification channels |
| [**api_v1_team_notifications_channels_post**](ChannelsApi.md#api_v1_team_notifications_channels_post) | **POST** /api/v1/team/notifications/channels | Create notification channel |


## api_v1_team_notifications_channels_channel_id_delete

> <MessageResponse> api_v1_team_notifications_channels_channel_id_delete(channel_id)

Delete notification channel

Permanently deletes a channel and removes it from any rules that reference it.

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

api_instance = Emailguard::ChannelsApi.new
channel_id = 'channel_id_example' # String | UUID of the notification channel to delete

begin
  # Delete notification channel
  result = api_instance.api_v1_team_notifications_channels_channel_id_delete(channel_id)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_channel_id_delete: #{e}"
end
```

#### Using the api_v1_team_notifications_channels_channel_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_notifications_channels_channel_id_delete_with_http_info(channel_id)

```ruby
begin
  # Delete notification channel
  data, status_code, headers = api_instance.api_v1_team_notifications_channels_channel_id_delete_with_http_info(channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_channel_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | UUID of the notification channel to delete |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_notifications_channels_channel_id_put

> <GetNotificationChannelResponse> api_v1_team_notifications_channels_channel_id_put(channel_id, update_notification_channel_input)

Update notification channel

Updates a channel's display name or configuration. Send only fields you want to change.

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

api_instance = Emailguard::ChannelsApi.new
channel_id = 'channel_id_example' # String | UUID of the notification channel to update
update_notification_channel_input = Emailguard::UpdateNotificationChannelInput.new # UpdateNotificationChannelInput | Updated channel name and/or configuration

begin
  # Update notification channel
  result = api_instance.api_v1_team_notifications_channels_channel_id_put(channel_id, update_notification_channel_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_channel_id_put: #{e}"
end
```

#### Using the api_v1_team_notifications_channels_channel_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotificationChannelResponse>, Integer, Hash)> api_v1_team_notifications_channels_channel_id_put_with_http_info(channel_id, update_notification_channel_input)

```ruby
begin
  # Update notification channel
  data, status_code, headers = api_instance.api_v1_team_notifications_channels_channel_id_put_with_http_info(channel_id, update_notification_channel_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotificationChannelResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_channel_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | UUID of the notification channel to update |  |
| **update_notification_channel_input** | [**UpdateNotificationChannelInput**](UpdateNotificationChannelInput.md) | Updated channel name and/or configuration |  |

### Return type

[**GetNotificationChannelResponse**](GetNotificationChannelResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## api_v1_team_notifications_channels_channel_id_test_post

> <MessageResponse> api_v1_team_notifications_channels_channel_id_test_post(channel_id)

Test notification channel

Sends a sample payload to a webhook channel to confirm the endpoint is reachable. On success the channel is marked verified.

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

api_instance = Emailguard::ChannelsApi.new
channel_id = 'channel_id_example' # String | UUID of the webhook channel to test

begin
  # Test notification channel
  result = api_instance.api_v1_team_notifications_channels_channel_id_test_post(channel_id)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_channel_id_test_post: #{e}"
end
```

#### Using the api_v1_team_notifications_channels_channel_id_test_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_notifications_channels_channel_id_test_post_with_http_info(channel_id)

```ruby
begin
  # Test notification channel
  data, status_code, headers = api_instance.api_v1_team_notifications_channels_channel_id_test_post_with_http_info(channel_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_channel_id_test_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | UUID of the webhook channel to test |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_notifications_channels_get

> <GetNotificationChannelsResponse> api_v1_team_notifications_channels_get

List notification channels

Returns every delivery channel configured for the team (email, webhook, and other supported types). Use channel IDs when attaching targets to notification rules.

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

api_instance = Emailguard::ChannelsApi.new

begin
  # List notification channels
  result = api_instance.api_v1_team_notifications_channels_get
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_get: #{e}"
end
```

#### Using the api_v1_team_notifications_channels_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotificationChannelsResponse>, Integer, Hash)> api_v1_team_notifications_channels_get_with_http_info

```ruby
begin
  # List notification channels
  data, status_code, headers = api_instance.api_v1_team_notifications_channels_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotificationChannelsResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNotificationChannelsResponse**](GetNotificationChannelsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_notifications_channels_post

> <GetNotificationChannelResponse> api_v1_team_notifications_channels_post(create_notification_channel_input)

Create notification channel

Creates a delivery channel for the team. Email channels require verification; webhook channels can be verified with the test endpoint.

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

api_instance = Emailguard::ChannelsApi.new
create_notification_channel_input = Emailguard::CreateNotificationChannelInput.new({name: 'name_example', type: 'type_example'}) # CreateNotificationChannelInput | Channel name, type, and type-specific configuration

begin
  # Create notification channel
  result = api_instance.api_v1_team_notifications_channels_post(create_notification_channel_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_post: #{e}"
end
```

#### Using the api_v1_team_notifications_channels_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotificationChannelResponse>, Integer, Hash)> api_v1_team_notifications_channels_post_with_http_info(create_notification_channel_input)

```ruby
begin
  # Create notification channel
  data, status_code, headers = api_instance.api_v1_team_notifications_channels_post_with_http_info(create_notification_channel_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotificationChannelResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling ChannelsApi->api_v1_team_notifications_channels_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_notification_channel_input** | [**CreateNotificationChannelInput**](CreateNotificationChannelInput.md) | Channel name, type, and type-specific configuration |  |

### Return type

[**GetNotificationChannelResponse**](GetNotificationChannelResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

