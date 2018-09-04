class Description < ApplicationRecord
  #belongs_to :user

  PAGES = ["Home", "Agence", "Réalisations"]
  ROLES = ["1", "2", "3", "4"]
  STYLES = ["Heading Roboto 100 Black", "Body Roboto 300 Grey"]
  validates :page, presence: true, inclusion: { in: PAGES }
  validates :role, presence: true, inclusion: { in: ROLES }
  validates :style, presence: true, inclusion: { in: STYLES }
  validates :text, presence: true

end
