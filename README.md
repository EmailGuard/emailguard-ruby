# emailguard_sdk

Ruby SDK for the EmailGuard public API. This package is generated from the public OpenAPI spec.

## Links

- [EmailGuard website](https://emailguard.co)
- [API docs](https://emailguard.co/docs/api-reference)
- [Ruby SDK guide](https://emailguard.co/docs/api-reference/guides/sdk-ruby)
- [OpenAPI spec](https://api.emailguard.co/api/v1/openapi.json)
- [Developer support](mailto:dev@emailguard.co)

## Install

```bash
gem install emailguard_sdk
```

## Authentication

Create a team-scoped API key in EmailGuard, then authenticate requests with:

```bash
Authorization: Bearer egsk_live_...
```

For local examples, you can also set:

```bash
EMAILGUARD_API_KEY=egsk_live_...
```

## Usage

```ruby
client = Emailguard::Client.new(api_key: ENV.fetch('EMAILGUARD_API_KEY'))
```

## Examples

See the generated [`examples/`](./examples/) directory for runnable workflows.


## API Responses

REST API responses use a JSON envelope:

```json
{ "code": "SUCCESS", "data": {}, "message": "" }
```

The public client unwraps `data` on success and raises/returns `APIError` for unsuccessful envelopes. Generated low-level transports remain available for advanced use.

## Related Packages

- [@emailguard/sdk (TypeScript)](https://www.npmjs.com/package/@emailguard/sdk)
- [@emailguard/mcp (MCP)](https://www.npmjs.com/package/@emailguard/mcp)
- [github.com/EmailGuard/emailguard-go (Go)](https://pkg.go.dev/github.com/EmailGuard/emailguard-go)
- [emailguard-sdk (Python)](https://pypi.org/project/emailguard-sdk/)
- [emailguard/emailguard-sdk (PHP)](https://packagist.org/packages/emailguard/emailguard-sdk)
- [emailguard_sdk (Ruby)](https://rubygems.org/gems/emailguard_sdk) (this package)
- [EmailGuard Zapier integration](https://emailguard.co/docs/api-reference/guides/getting-started)

## Support

Questions, issues, or feedback? Email [dev@emailguard.co](mailto:dev@emailguard.co).

## License

MIT
