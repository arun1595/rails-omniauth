Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail,
           Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
end
