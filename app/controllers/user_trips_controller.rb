class UserTripsController < ApplicationController
  before_action :set_user_trip, only: [:show, :edit, :update, :destroy]

  # GET /user_trips
  # GET /user_trips.json
  def index
    @user_trips = UserTrip.all
  end

  # GET /user_trips/1
  # GET /user_trips/1.json
  def show
  end

  # GET /user_trips/new
  def new
    @user_trip = UserTrip.new
  end

  # GET /user_trips/1/edit
  def edit
  end

  # POST /user_trips
  # POST /user_trips.json
  def create
    @user_trip = UserTrip.new(user_trip_params)

    respond_to do |format|
      if @user_trip.save
        format.html { redirect_to @user_trip, notice: 'User trip was successfully created.' }
        format.json { render :show, status: :created, location: @user_trip }
      else
        format.html { render :new }
        format.json { render json: @user_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_trips/1
  # PATCH/PUT /user_trips/1.json
  def update
    respond_to do |format|
      if @user_trip.update(user_trip_params)
        format.html { redirect_to @user_trip, notice: 'User trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_trip }
      else
        format.html { render :edit }
        format.json { render json: @user_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_trips/1
  # DELETE /user_trips/1.json
  def destroy
    @user_trip.destroy
    respond_to do |format|
      format.html { redirect_to user_trips_url, notice: 'User trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_trip
      @user_trip = UserTrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_trip_params
      params.require(:user_trip).permit(:user_id, :trip_id, :attended, :favorite)
    end
end
