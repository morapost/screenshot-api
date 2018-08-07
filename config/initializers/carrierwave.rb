CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required


  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJPOHPL7BEGNTJS6Q',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',                        # required unless using use_iam_profile
    use_iam_profile:       true,                         # optional, defaults to false
    region:                'ap-south-1',                  # optional, defaults to 'us-east-1'
    #host:                  's3.example.com',             # optional, defaults to nil
    #endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.storage = :fog

  config.fog_directory  = 'morapost-rails-screenshot'                                      # required
  #config.fog_public     = true                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end