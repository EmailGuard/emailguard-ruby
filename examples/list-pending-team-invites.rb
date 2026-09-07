require 'emailguard_sdk'

client = Emailguard::Client.new(api_key: ENV.fetch('EMAILGUARD_API_KEY'))
result = client.invites.list_pending_team_invites()
puts result.inspect
