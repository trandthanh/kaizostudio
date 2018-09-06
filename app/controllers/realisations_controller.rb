class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_realisations, only: [:show, :edit, :update, :destroy]

  def index
    @realisations = Realisation.all

    @realisations_descriptions = Description.where("page = 'Réalisations'")
  end

  def show

  end

  def new
    @realisation = Realisation.new
  end

  def create
    @realisation = Realisation.new(realisation_params)
    if @realisation.save
      if params[:realisation][:photo].nil?
        redirect_to realisation_path(@realisation)
      else
        params[:realisation][:photo].each do |u|
          new_photo = Gallery.new(photo: u)
          new_photo.realisation = @realisation
          new_photo.save
        end
        redirect_to realisation_path(@realisation)
      end
    else
      render :new
    end
  end


  def edit
    @realisation = Realisation.find(params[:id])
  end

  def update
    @realisation = Realisation.find(params[:id])
    if @realisation.update(realisation_params)
      if params[:realisation][:photo].nil?
        params[:realisation][:photo].reject { |c| c.empty? }
        redirect_to realisation_path(@realisation)
      else
        params[:realisation][:photo].each do |u|
          new_photo = Gallery.new(photo: u)
          new_photo.realisation = @realisation
          new_photo.save
        end
        redirect_to realisation_path(@realisation)
      end
    else
      render :edit
    end
  end

  def destroy
    @realisation.destroy
    redirect_to realisations_path
  end

  private

  def set_realisations
    @realisation = Realisation.find(params[:id])
  end

  def realisation_params
    params.require(:realisation).permit(:title, :subtitle, :description, :date, :cover_picture, { galleries: [] }, :pictures)
  end


end
