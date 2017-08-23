require "carrierwave"

Excon.defaults[:ciphers] = OpenSSL::SSL::SSLContext::DEFAULT_PARAMS[:ciphers]

aws_config = YAML.load(File.open("config/aws.yml"))

CarrierWave.configure do |config|
  config.storage = :fog
  config.store_dir = aws_config.fetch(:store_dir, "test")
  config.fog_directory = aws_config.fetch(:bucket)
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: aws_config.fetch(:aws_access_key_id),
    aws_secret_access_key: aws_config.fetch(:aws_secret_access_key)
  }
end

file = File.new("Maldives-beash-resort-4.jpg")

uploader = CarrierWave::Uploader::Base.new
uploader.store!(file)
