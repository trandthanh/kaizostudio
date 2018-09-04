class Realisation < ApplicationRecord
  has_many :galleries, dependent: :destroy
end
