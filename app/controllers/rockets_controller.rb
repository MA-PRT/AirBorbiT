class RocketsController < ApplicationController
  before_action :set_rocket, only: %i[ show edit update destroy ]

  def index
    @rockets = Rocket.all
    if params[:query].present?
      sql_subquery = <<~SQL
        rockets.name @@ :query
        OR rockets.content @@ :query
      SQL
      @rockets = @rockets.where(sql_subquery, query: params[:query])
    end
  end

  def show
    @booking = Booking.new(rocket: @rocket)
  end

  def new
    @rocket = Rocket.new
  end

  def create
    @rocket = Rocket.new(params_rocket)
    @rocket.user = current_user
    if @rocket.save
      redirect_to rocket_path(@rocket)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @rocket.update(params_rocket)
    redirect_to mine_bookings_path
  end

  def destroy
    @rocket.destroy
    redirect_to mine_bookings_path
  end

  private

  def params_rocket
    params.require(:rocket).permit(:name, :content, :price_per_day, :number_passengers, photos: [])
  end

  def set_rocket
    @rocket = Rocket.find(params[:id])
  end
end
