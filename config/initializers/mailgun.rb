Mailgun.configure do |config|
    config.api_key = Rails.application.credentials.railsgun_api
  end