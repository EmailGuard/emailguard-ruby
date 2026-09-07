require 'emailguard_sdk'

client = Emailguard::Client.new(api_key: ENV.fetch('EMAILGUARD_API_KEY'))
result = client.teams.get_team()
puts result.inspect
