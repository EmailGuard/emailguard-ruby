# Emailguard::EventsApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_notifications_events_get**](EventsApi.md#api_v1_team_notifications_events_get) | **GET** /api/v1/team/notifications/events | List notification events |


## api_v1_team_notifications_events_get

> <GetNotificationEventsResponse> api_v1_team_notifications_events_get

List notification events

Returns recent notification delivery events for polling integrations. Use this to inspect what was sent and when without configuring a webhook receiver.

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

api_instance = Emailguard::EventsApi.new

begin
  # List notification events
  result = api_instance.api_v1_team_notifications_events_get
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling EventsApi->api_v1_team_notifications_events_get: #{e}"
end
```

#### Using the api_v1_team_notifications_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetNotificationEventsResponse>, Integer, Hash)> api_v1_team_notifications_events_get_with_http_info

```ruby
begin
  # List notification events
  data, status_code, headers = api_instance.api_v1_team_notifications_events_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetNotificationEventsResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling EventsApi->api_v1_team_notifications_events_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetNotificationEventsResponse**](GetNotificationEventsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

