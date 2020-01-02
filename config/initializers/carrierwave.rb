CarrierWave.configure do |config|
  config.aws_credentials = {
    region:             'us-east-1',
    access_key_id:      ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY'],
  }
  config.storage = :aws
  #config.permissions = 0666
  #config.cache_dir = "#{Rails.root}/tmp/"
  config.aws_bucket = ENV['AWS_BUCKET']
  config.aws_acl  = 'private'
end
