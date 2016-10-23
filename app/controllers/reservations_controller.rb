class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all

    respond_to do |format|
      format.html
      format.csv { send_data @reservations.to_csv }
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
  end

  def update
    @reservation = Reservation.find(params[:id])

    if @reservation.update(reservation_params)
      redirect_to @reservation
    else
      render 'edit'
    end
  end

  def destroy
    @reservaion = Reservation.find(params[:id])
    @reservaion.destroy

    redirect_to reservations_path
  end

  private

    def reservation_params
      params.require(:reservation).permit(:f_name, :l_name)
    end

end
