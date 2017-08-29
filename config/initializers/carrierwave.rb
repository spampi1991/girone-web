
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV["AWS_ACCESS_KEY_ID"],
      :aws_secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"],
      :region                => 'us-east-2'
  }
  config.cache_dir     = "#{Rails.root}/tmp/uploads"

  if Rails.env.test? or Rails.env.development?
    config.fog_directory =  'gironeweb-bucket-test'
  else
    config.fog_directory =  'gironeweb-bucket'
  end
end