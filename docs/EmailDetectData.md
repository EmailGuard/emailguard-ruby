# Emailguard::EmailDetectData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detection_source** | **String** |  | [optional] |
| **disposable** | **Boolean** |  | [optional] |
| **disposable_provider** | **String** |  | [optional] |
| **domain** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **normalized** | **String** |  | [optional] |
| **public_domain** | **Boolean** |  | [optional] |
| **relay_domain** | **Boolean** |  | [optional] |
| **relay_provider** | **String** |  | [optional] |
| **role_address** | **Boolean** |  | [optional] |
| **subaddressing** | **Boolean** |  | [optional] |
| **suggested_domain** | **String** | Corrected domain candidate when a domain or TLD typo rule matches. | [optional] |
| **suggested_email** | **String** | Corrected email candidate when a domain or TLD typo rule matches. | [optional] |
| **syntax_validation** | **Boolean** |  | [optional] |

## Example

```ruby
require 'emailguard_sdk'

instance = Emailguard::EmailDetectData.new(
  detection_source: null,
  disposable: null,
  disposable_provider: null,
  domain: null,
  email: null,
  normalized: null,
  public_domain: null,
  relay_domain: null,
  relay_provider: null,
  role_address: null,
  subaddressing: null,
  suggested_domain: null,
  suggested_email: null,
  syntax_validation: null
)
```

