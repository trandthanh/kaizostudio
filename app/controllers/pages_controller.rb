class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :agence, :contact]

  def home
    @home_descriptions = Description.where("page = 'Home'")

    @featured_realisations = Realisation.where(:featured => true)
  end

  def agence
    @agence_descriptions = Description.where("page = 'Agence'")
  end

  def contact
  end
end
