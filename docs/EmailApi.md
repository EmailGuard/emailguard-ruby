# Emailguard::EmailApi

All URIs are relative to *http://api.emailguard.co*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_v1_emails_detect_get**](EmailApi.md#api_v1_emails_detect_get) | **GET** /api/v1/emails/detect | Detect email characteristics |


## api_v1_emails_detect_get

> <EmailDetectResponse> api_v1_emails_detect_get(email)

Detect email characteristics

Analyzes an email for syntax, normalization, typo suggestions, role/public/relay/disposable signals. Invalid TLDs can return suggested_email and suggested_domain while syntax_validation remains false.

### Examples

```ruby
require 'time'
require 'emailguard_sdk'

api_instance = Emailguard::EmailApi.new
email = 'email_example' # String | Email address to analyze

begin
  # Detect email characteristics
  result = api_instance.api_v1_emails_detect_get(email)
  p result
rescue Emailguard::ApiError => e
  puts "Error when calling EmailApi->api_v1_emails_detect_get: #{e}"
end
```

#### Using the api_v1_emails_detect_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailDetectResponse>, Integer, Hash)> api_v1_emails_detect_get_with_http_info(email)

```ruby
begin
  # Detect email characteristics
  data, status_code, headers = api_instance.api_v1_emails_detect_get_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailDetectResponse>
rescue Emailguard::ApiError => e
  puts "Error when calling EmailApi->api_v1_emails_detect_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to analyze |  |

### Return type

[**EmailDetectResponse**](EmailDetectResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

