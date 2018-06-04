Rails.application.config.middleware.use OmniAuth::Builder do

  def google_oauth2_options
    {
      provider_ignores_state: true,
      prompt: 'select_account consent',
      access_type: 'offline',
      scope: "email, profile, plus.me",
      redirect_uri: "http://localhost:3000/omniauth/google_oauth2/callback"#,
      # grant_type: "authorization_code"
    }
  end
  provider :facebook,      '163190124347534', 'd8e671ba3a1a09aebc4ceb58f201a548'
  # info_fields: 'email,first_name,last_name'
  provider :google_oauth2, '522977791483-top09bqo0cppurvq5t2fcpsqs12p2hrg.apps.googleusercontent.com','MrMnk-TCMV8y278oKhm9G1I1', google_oauth2_options
    
  end