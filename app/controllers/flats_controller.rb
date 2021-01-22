class FlatsController < ApplicationController
  before_action :set_flat, only: [:edit, :update, :show, :destroy]

  def index
    if params[:keyword]
      @keyword = params[:keyword]
      @flats = Flat.all.where("name LIKE '%#{@keyword}%'")
    else
      @flats = Flat.all
    end
    set_markers
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(params_flat)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @flat.update(params_flat)
      redirect_to flat_path(@flat)
    else
      render 'edit'
    end
  end

  def show
    @flats = Flat.where('id = ?', params[:id])
    set_markers
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def params_flat
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night, :photos => [])
  end

  def set_markers
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: 'info_window', locals: { flat: flat }),
        image_url: flat.photos.first
      }
    end
  end
end
