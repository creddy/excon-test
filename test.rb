require "carrierwave"

CarrierWave.configure do |config|
  config.storage = :fog
  config.store_dir = ENV["CW_STORE_DIR"] || "test"
  config.fog_directory = ENV["S3_BUCKET"]
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
  }
end

file = File.new("Maldives-beash-resort-4.jpg")

uploader = CarrierWave::Uploader::Base.new
uploader.store!(file)
