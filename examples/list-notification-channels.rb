require 'emailguard_sdk'

client = Emailguard::Client.new(api_key: ENV.fetch('EMAILGUARD_API_KEY'))
result = client.channels.list_notification_channels()
puts result.inspect
