OpenAI.configure do |config|
  config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")
  # config.api_key = ENV.fetch("OPENAI_ACCESS_TOKEN")
end
