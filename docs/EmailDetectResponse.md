# Emailguard::EmailDetectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Machine-readable status code (for example OK or INVALID_BODY). |  |
| **data** | [**EmailDetectData**](EmailDetectData.md) |  | [optional] |
| **message** | **String** | Human-readable detail when the code is not OK. | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::EmailDetectResponse.new(
  code: null,
  data: null,
  message: null
)
```

