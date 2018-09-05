class Description < ApplicationRecord
  #belongs_to :user

  PAGES = ["Home", "Agence", "Réalisations"]
  ROLES = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k"]
  STYLES = ["Heading Roboto 300 Black", "Body Roboto 300 Grey", "Body Roboto 400 Grey"]
  validates :page, inclusion: { in: PAGES }
  validates :role, inclusion: { in: ROLES }
  validates :style, inclusion: { in: STYLES }
  validates :text, presence: true

end
