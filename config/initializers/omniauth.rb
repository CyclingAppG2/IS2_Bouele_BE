Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook,     '3d887501fb99c3f8810e4daf46c0a676', '3d887501fb99c3f8810e4daf46c0a676'
    provider :google_oauth2, ENV['GOOGLE_KEY'],   ENV['GOOGLE_SECRET']
  end