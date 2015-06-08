OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '747106637186-qa791ta31636rfss080h752h4cb4ecna.apps.googleusercontent.com', 'vw-9FfBYpwMvc_xg0CYLk4lf',
    {
      client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}
    }
end
