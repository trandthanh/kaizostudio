class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :agence, :contact]

  def home
    @home_descriptions = Description.find_by(page: "Home")

    @featured_realisations = Realisation.where(:featured => true)
  end

  def agence
  end

  def contact
  end
end
