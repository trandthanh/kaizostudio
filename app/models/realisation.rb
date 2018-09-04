class Realisation < ApplicationRecord
  #belongs_to :user
  has_many :galleries, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :subtitle, presence: true
  validates :description, presence: true
end
