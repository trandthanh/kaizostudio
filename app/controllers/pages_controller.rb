class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :agence, :contact]

  def home
  end

  def agence
  end

  def contact
  end
end
