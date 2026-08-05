# Emailguard::RulesApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_notifications_rules_get**](RulesApi.md#api_v1_team_notifications_rules_get) | **GET** /api/v1/team/notifications/rules | List notification rules |
| [**api_v1_team_notifications_rules_post**](RulesApi.md#api_v1_team_notifications_rules_post) | **POST** /api/v1/team/notifications/rules | Create notification rule |
| [**api_v1_team_notifications_rules_rule_id_delete**](RulesApi.md#api_v1_team_notifications_rules_rule_id_delete) | **DELETE** /api/v1/team/notifications/rules/{ruleId} | Delete notification rule |
| [**api_v1_team_notifications_rules_rule_id_put**](RulesApi.md#api_v1_team_notifications_rules_rule_id_put) | **PUT** /api/v1/team/notifications/rules/{ruleId} | Update notification rule |


## api_v1_team_notifications_rules_get

> <GetNotificationRulesResponse> api_v1_team_notifications_rules_get

List notification rules

Returns routing rules that map event types to one or more delivery channels. Each rule includes its enabled state and channel targets.

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

api_instance = Emailguard::RulesApi.new

begin
  # List notification rules
  result = api_instance.api_v1_team_notifications_rules_get
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_get: #{e}"
end
```

#### Using the api_v1_team_notifications_rules_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotificationRulesResponse>, Integer, Hash)> api_v1_team_notifications_rules_get_with_http_info

```ruby
begin
  # List notification rules
  data, status_code, headers = api_instance.api_v1_team_notifications_rules_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotificationRulesResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNotificationRulesResponse**](GetNotificationRulesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_notifications_rules_post

> <IdDataResponse> api_v1_team_notifications_rules_post(create_notification_rule_input)

Create notification rule

Creates a rule that delivers matching events to the specified channels. At least one event type and one channel target are required.

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

api_instance = Emailguard::RulesApi.new
create_notification_rule_input = Emailguard::CreateNotificationRuleInput.new({channels: [Emailguard::NotificationRuleChannelInput.new], event_types: ['event_types_example'], name: 'name_example'}) # CreateNotificationRuleInput | Rule name, event types, and channel targets

begin
  # Create notification rule
  result = api_instance.api_v1_team_notifications_rules_post(create_notification_rule_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_post: #{e}"
end
```

#### Using the api_v1_team_notifications_rules_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IdDataResponse>, Integer, Hash)> api_v1_team_notifications_rules_post_with_http_info(create_notification_rule_input)

```ruby
begin
  # Create notification rule
  data, status_code, headers = api_instance.api_v1_team_notifications_rules_post_with_http_info(create_notification_rule_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IdDataResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_notification_rule_input** | [**CreateNotificationRuleInput**](CreateNotificationRuleInput.md) | Rule name, event types, and channel targets |  |

### Return type

[**IdDataResponse**](IdDataResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## api_v1_team_notifications_rules_rule_id_delete

> <MessageResponse> api_v1_team_notifications_rules_rule_id_delete(rule_id)

Delete notification rule

Permanently deletes a routing rule and its channel assignments.

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

api_instance = Emailguard::RulesApi.new
rule_id = 'rule_id_example' # String | UUID of the notification rule to delete

begin
  # Delete notification rule
  result = api_instance.api_v1_team_notifications_rules_rule_id_delete(rule_id)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_rule_id_delete: #{e}"
end
```

#### Using the api_v1_team_notifications_rules_rule_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_notifications_rules_rule_id_delete_with_http_info(rule_id)

```ruby
begin
  # Delete notification rule
  data, status_code, headers = api_instance.api_v1_team_notifications_rules_rule_id_delete_with_http_info(rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_rule_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | UUID of the notification rule to delete |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## api_v1_team_notifications_rules_rule_id_put

> <MessageResponse> api_v1_team_notifications_rules_rule_id_put(rule_id, update_notification_rule_input)

Update notification rule

Updates a rule's name, description, event types, enabled flag, or channel targets. When `channels` is sent it replaces all existing targets.

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

api_instance = Emailguard::RulesApi.new
rule_id = 'rule_id_example' # String | UUID of the notification rule to update
update_notification_rule_input = Emailguard::UpdateNotificationRuleInput.new # UpdateNotificationRuleInput | Fields to update on the rule

begin
  # Update notification rule
  result = api_instance.api_v1_team_notifications_rules_rule_id_put(rule_id, update_notification_rule_input)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_rule_id_put: #{e}"
end
```

#### Using the api_v1_team_notifications_rules_rule_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResponse>, Integer, Hash)> api_v1_team_notifications_rules_rule_id_put_with_http_info(rule_id, update_notification_rule_input)

```ruby
begin
  # Update notification rule
  data, status_code, headers = api_instance.api_v1_team_notifications_rules_rule_id_put_with_http_info(rule_id, update_notification_rule_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling RulesApi->api_v1_team_notifications_rules_rule_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | UUID of the notification rule to update |  |
| **update_notification_rule_input** | [**UpdateNotificationRuleInput**](UpdateNotificationRuleInput.md) | Fields to update on the rule |  |

### Return type

[**MessageResponse**](MessageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

