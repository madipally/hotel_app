class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  # GET /hotels
  def index
    @hotels = if params[:location].present?
                Hotel.where("location ILIKE ?", "%#{params[:location]}%")
              else
                Hotel.all
              end
  end

  # GET /hotels/new
  def new
    @hotel = Hotel.new
  end

  # POST /hotels
  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to @hotel, notice: 'Hotel was successfully created.'
    else
      render :new
    end
  end

  # GET /hotels/:id
  def show
  end

  # GET /hotels/:id/edit
  def edit
  end

  # PATCH/PUT /hotels/:id
  def update
    if @hotel.update(hotel_params)
      redirect_to @hotel, notice: 'Hotel was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /hotels/:id
  def destroy
    @hotel.destroy
    redirect_to hotels_url, notice: 'Hotel was successfully destroyed.'
  end

 # GET /hotels/search
  def search
    @hotels = Hotel.where("location ILIKE ?", "%#{params[:location]}%")
    render :index
  end

  private
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end

    def hotel_params
      params.require(:hotel).permit(:name, :location)
    end
end
