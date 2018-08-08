class BookingsController < ApplicationController
  before_action :authorize
  def index
  end

  def show
    @booking = Booking.find params[:id]
  end

  def edit
  end

  def create

    # TODO Make sure artist is not double booked.

    @booking = Booking.new
    @booking.customer_id = @current_user.id
    @booking.date = params[:booking][:date]
    @booking.start_hour = params[:booking][:start_hour]
    @booking.artist_id = params[:booking][:artist_id]
    @booking.save
  end

  def new
    # Make sure that the visit_id that the user sent, actually exists
    @visit = Visit.find params[:visit_id]

    # Build an array of dates to present to the user
    @dateRange = (@visit.start_date..@visit.end_date).to_a

    @booking = Booking.new
  end

  def destroy
  end

  def update
  end
end
