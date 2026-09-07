require 'emailguard_sdk'

client = Emailguard::Client.new(api_key: ENV.fetch('EMAILGUARD_API_KEY'))
result = client.billing.get_billing_usage()
puts result.inspect
