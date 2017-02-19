CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAJ7JMI22OYCGJTEIA',
    :aws_secret_access_key  => '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',
    :region                 => 'ap-northeast-1'
  }

  config.fog_directory = 'modoki' if Rails.env.production?
  # config.fog_directory = 'your_backet_for_dev' if Rails.env.development?

end
