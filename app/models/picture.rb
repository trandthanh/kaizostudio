class Picture < ApplicationRecord
  belongs_to :realisation

  mount_uploader :url, UrlUploader
end
