class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :agence, :contact]

  def home
    @home_descriptions = Description.find_by(page: "Home")
  end

  def agence
  end

  def contact
  end
end
