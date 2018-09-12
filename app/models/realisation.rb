class Realisation < ApplicationRecord
  #belongs_to :user
  has_many :galleries, dependent: :destroy
  has_many :pictures, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :subtitle, presence: true
  validates :description, presence: true
  validates :cover_picture, presence: true
  validates :url, presence: true, uniqueness: true

  mount_uploader :cover_picture, CoverPictureUploader
  # serialize :photos
  mount_uploaders :photos, PhotoUploader

end
