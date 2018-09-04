class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @realisations = Realisation.all
  end

  def show
    @realisation = Realisation.find(params[:id])
  end
end
