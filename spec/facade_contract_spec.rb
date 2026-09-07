require 'emailguard_sdk'

RSpec.describe Emailguard::Client do
  let(:client) { described_class.new(api_key: "test-key", base_url: "https://api.example.test") }

  it "cancelPendingInvite" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members/invites/example",
      method: :delete
    ).and_return(response)
    result = client.invites.cancel_pending_invite(invite_id: "example")
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "createNotificationChannel" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":{\"config\":{},\"created_at\":\"example\",\"id\":\"example\",\"is_verified\":false,\"name\":\"example\",\"type\":\"example\"},\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/channels",
      method: :post
    ).and_return(response)
    result = client.channels.create_notification_channel(input: Emailguard::CreateNotificationChannelInput.new({ name: "example", type: "example" }))
    expect(result).to be_a(Emailguard::NotificationChannelResponse)
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "createNotificationRule" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":{\"id\":\"example\"},\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/rules",
      method: :post
    ).and_return(response)
    result = client.rules.create_notification_rule(input: Emailguard::CreateNotificationRuleInput.new({ channels: [Emailguard::NotificationRuleChannelInput.new({  })], event_types: ["example"], name: "example" }))
    expect(result).to be_a(Emailguard::IdDataStruct)
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "deleteNotificationChannel" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/channels/example",
      method: :delete
    ).and_return(response)
    result = client.channels.delete_notification_channel(channel_id: "example")
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "deleteNotificationRule" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/rules/example",
      method: :delete
    ).and_return(response)
    result = client.rules.delete_notification_rule(rule_id: "example")
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "detectEmail" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":{\"confidence\":\"example\",\"detection_source\":\"example\",\"disposable\":false,\"disposable_provider\":\"example\",\"domain\":\"example\",\"email\":\"example\",\"evidence\":{\"cluster_provider\":\"example\",\"detection_layer\":\"example\",\"source_count\":0},\"normalized\":\"example\",\"public_domain\":false,\"relay_domain\":false,\"relay_provider\":\"example\",\"role_address\":false,\"subaddressing\":false,\"suggested_domain\":\"example\",\"suggested_email\":\"example\",\"syntax_validation\":false},\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/emails/detect",
      method: :get
    ).and_return(response)
    result = client.email.detect_email(email: "example")
    expect(result).to be_a(Emailguard::EmailDetectData)
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "getBillingUsage" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":[],\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/billing/usage",
      method: :get
    ).and_return(response)
    result = client.billing.get_billing_usage()
    expect(result).not_to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "getTeam" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":{\"email\":\"example\",\"emoji\":\"example\",\"id\":\"example\",\"name\":\"example\",\"type\":\"example\",\"url\":\"example\"},\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team",
      method: :get
    ).and_return(response)
    result = client.teams.get_team()
    expect(result).to be_a(Emailguard::PublicTeamResponse)
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "inviteTeamMember" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members/invites",
      method: :post
    ).and_return(response)
    result = client.invites.invite_team_member(input: Emailguard::InviteTeamMemberInput.new({ email: "example", role: "example" }))
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "listNotificationChannels" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":[],\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/channels",
      method: :get
    ).and_return(response)
    result = client.channels.list_notification_channels()
    expect(result).not_to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "listNotificationEvents" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":[],\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/events",
      method: :get
    ).and_return(response)
    result = client.events.list_notification_events()
    expect(result).not_to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "listNotificationRules" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":[],\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/rules",
      method: :get
    ).and_return(response)
    result = client.rules.list_notification_rules()
    expect(result).not_to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "listPendingTeamInvites" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":[],\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members/invites",
      method: :get
    ).and_return(response)
    result = client.invites.list_pending_team_invites()
    expect(result).not_to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "listTeamMembers" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":[],\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members",
      method: :get
    ).and_return(response)
    result = client.members.list_team_members()
    expect(result).not_to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "removeTeamMember" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members/example",
      method: :delete
    ).and_return(response)
    result = client.members.remove_team_member(user_id: "example")
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "testNotificationChannel" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/channels/example/test",
      method: :post
    ).and_return(response)
    result = client.channels.test_notification_channel(channel_id: "example")
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "updateNotificationChannel" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":{\"config\":{},\"created_at\":\"example\",\"id\":\"example\",\"is_verified\":false,\"name\":\"example\",\"type\":\"example\"},\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/channels/example",
      method: :put
    ).and_return(response)
    result = client.channels.update_notification_channel(channel_id: "example", input: Emailguard::UpdateNotificationChannelInput.new({  }))
    expect(result).to be_a(Emailguard::NotificationChannelResponse)
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "updateNotificationRule" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/notifications/rules/example",
      method: :put
    ).and_return(response)
    result = client.rules.update_notification_rule(rule_id: "example", input: Emailguard::UpdateNotificationRuleInput.new({  }))
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "updateTeam" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"data\":{\"email\":\"example\",\"emoji\":\"example\",\"id\":\"example\",\"name\":\"example\",\"type\":\"example\",\"url\":\"example\"},\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team",
      method: :patch
    ).and_return(response)
    result = client.teams.update_team(input: Emailguard::UpdateTeamInput.new({ name: "example" }))
    expect(result).to be_a(Emailguard::PublicTeamResponse)
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "updateTeamMember" do
    response = Typhoeus::Response.new(
      code: 200,
      headers: { "Content-Type" => "application/json" },
      body: "{\"code\":\"SUCCESS\",\"message\":\"ok\"}"
    )
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members/example",
      method: :patch
    ).and_return(response)
    result = client.members.update_team_member(user_id: "example", input: Emailguard::PublicUpdateTeamMemberInput.new({  }))
    expect(result).to be_nil
    expect(response.request.options[:headers]["Authorization"]).to eq("Bearer test-key")
  end

  it "normalizes response errors" do
    url = "https://api.example.test/api/v1/emails/detect"

    Typhoeus.stub(url, method: :get).and_return(
      Typhoeus::Response.new(code: 429, headers: { "Content-Type" => "application/json" }, body: '{"code":"RATE_LIMITED","message":"Slow down"}')
    )
    expect { client.email.detect_email(email: "example") }.to raise_error(Emailguard::APIError) { |error| expect(error.status).to eq(429) }

    Typhoeus.stub(url, method: :get).and_return(
      Typhoeus::Response.new(code: 200, headers: { "Content-Type" => "application/json" }, body: "{\"code\":\"DENIED\",\"message\":\"Not allowed\",\"data\":{\"confidence\":\"example\",\"detection_source\":\"example\",\"disposable\":false,\"disposable_provider\":\"example\",\"domain\":\"example\",\"email\":\"example\",\"evidence\":{\"cluster_provider\":\"example\",\"detection_layer\":\"example\",\"source_count\":0},\"normalized\":\"example\",\"public_domain\":false,\"relay_domain\":false,\"relay_provider\":\"example\",\"role_address\":false,\"subaddressing\":false,\"suggested_domain\":\"example\",\"suggested_email\":\"example\",\"syntax_validation\":false}}")
    )
    expect { client.email.detect_email(email: "example") }.to raise_error(Emailguard::APIError) { |error| expect(error.code).to eq("DENIED") }

    Typhoeus.stub(url, method: :get).and_return(
      Typhoeus::Response.new(code: 200, headers: { "Content-Type" => "application/json" }, body: "{")
    )
    expect { client.email.detect_email(email: "example") }.to raise_error(Emailguard::APIError) { |error| expect(error.code).to eq("INVALID_RESPONSE") }

    Typhoeus.stub(url, method: :get).and_return(
      Typhoeus::Response.new(code: 200, headers: { "Content-Type" => "application/json" }, body: '{"code":"SUCCESS","message":"ok"}')
    )
    expect { client.email.detect_email(email: "example") }.to raise_error(Emailguard::APIError) { |error| expect(error.code).to eq("INVALID_RESPONSE") }
  end

  it "returns nil for message-only success" do
    Typhoeus.stub(
      "https://api.example.test/api/v1/team/members/invites/example",
      method: :delete
    ).and_return(
      Typhoeus::Response.new(code: 200, headers: { "Content-Type" => "application/json" }, body: '{"code":"SUCCESS","message":"ok"}')
    )
    expect(client.invites.cancel_pending_invite(invite_id: "example")).to be_nil
  end

end
