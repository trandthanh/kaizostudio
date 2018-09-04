class Description < ApplicationRecord
  #belongs_to :user

  validates :page, presence: true
  validates :role, presence: true
  validates :style, presence: true
  validates :text, presence: true
end
