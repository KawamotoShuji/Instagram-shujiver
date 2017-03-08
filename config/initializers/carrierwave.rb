CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'ACCESS_KEY_ID(ENV)',
    aws_secret_access_key: 'ACCESS_KEY(ENV)',
    region: 'ap-northeast-1'
  }

  config.fog_directory = 'modoki' if Rails.env.production?
  # config.fog_directory = 'your_backet_for_dev' if Rails.env.development?

end
