class Gallery < ApplicationRecord
  belongs_to :realisation

  # validates :photo, presence: true
  mount_uploaders :photo, GalleryUploader
end
