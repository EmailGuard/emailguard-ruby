# Emailguard::BillingApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_team_billing_usage_get**](BillingApi.md#api_v1_team_billing_usage_get) | **GET** /api/v1/team/billing/usage | Get billing usage |


## api_v1_team_billing_usage_get

> <BillingUsageResponse> api_v1_team_billing_usage_get(opts)

Get billing usage

Returns metered feature usage for the team's billing period. Defaults to the current period; use `range=previous` or `range=custom` with `start` and `end` to query other windows.

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

api_instance = Emailguard::BillingApi.new
opts = {
  range: 'current', # String | Period selector: current, previous, or custom
  start: 'start_example', # String | Custom range start (RFC3339 or YYYY-MM-DD); required when range=custom
  _end: '_end_example' # String | Custom range end (RFC3339 or YYYY-MM-DD); required when range=custom
}

begin
  # Get billing usage
  result = api_instance.api_v1_team_billing_usage_get(opts)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling BillingApi->api_v1_team_billing_usage_get: #{e}"
end
```

#### Using the api_v1_team_billing_usage_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingUsageResponse>, Integer, Hash)> api_v1_team_billing_usage_get_with_http_info(opts)

```ruby
begin
  # Get billing usage
  data, status_code, headers = api_instance.api_v1_team_billing_usage_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingUsageResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling BillingApi->api_v1_team_billing_usage_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Period selector: current, previous, or custom | [optional] |
| **start** | **String** | Custom range start (RFC3339 or YYYY-MM-DD); required when range&#x3D;custom | [optional] |
| **_end** | **String** | Custom range end (RFC3339 or YYYY-MM-DD); required when range&#x3D;custom | [optional] |

### Return type

[**BillingUsageResponse**](BillingUsageResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

