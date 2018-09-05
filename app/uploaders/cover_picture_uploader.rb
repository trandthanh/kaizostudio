class CoverPictureUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
