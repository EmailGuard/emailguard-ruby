require 'emailguard_sdk'

client = Emailguard::Client.new(api_key: ENV.fetch('EMAILGUARD_API_KEY'))
result = client.email.detect_email(email: "user@example.com")
puts result.inspect
