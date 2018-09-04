class Description < ApplicationRecord
  #belongs_to :user

  PAGES = ["Home", "Agence", "Réalisations"]
  ROLES = ["1", "2", "3", "4"]
  STYLES = ["Heading Roboto 100 Black", "Body Roboto 300 Grey"]
  validates :page, inclusion: { in: PAGES }
  validates :role, inclusion: { in: ROLES }
  validates :style, inclusion: { in: STYLES }
  validates :text, presence: true

end
