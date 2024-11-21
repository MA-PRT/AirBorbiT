class BookingsController < ApplicationController
  before_action :set_rocket, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = @rocket.bookings.new
  end

  def mine
    @bookings = current_user.bookings
    @requests = Booking.includes(:user, :rocket).where(rocket: current_user.rockets)
  end

  def create
    @booking = @rocket.bookings.new(booking_params)
    @booking.user = current_user
    @booking.number_of_days = compute_days(params[:booking][:date_range])
    @booking.full_price = @booking.number_of_days * @booking.rocket.price_per_day
    @booking.start_date = Date.parse(params[:booking][:date_range].first(10))
    @booking.end_date = Date.parse(params[:booking][:date_range].last(10))
    @booking.date_range = @booking.start_date..@booking.end_date

    if @booking.save
      redirect_to rocket_path(@rocket), notice: "Booking created successfully!"
    else
      redirect_to rocket_path(@rocket), notice: "Booking not created!"
    end
  end




  private

  def booking_params
    params.require(:booking).permit(:number_of_days, :full_price)
  end

  def set_rocket
    @rocket = Rocket.find(params[:rocket_id])
  end

  def compute_days(range)
    start_date = Date.parse(range.first(10))
    last_date = Date.parse(range.last(10))
    number_of_days = (last_date - start_date).to_i
  end
end
