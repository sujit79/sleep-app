class UserSleepsController < ApplicationController
  before_action :set_user_sleep, only: %i[ show edit update destroy ]

  # GET /user_sleeps or /user_sleeps.json
  def index
    @today = Date.today
    @start_of_last_week = @today.beginning_of_week - 7
    @end_of_last_week = @today.end_of_week - 6
    @user_sleeps  = UserSleep.where("created_at BETWEEN ? AND ?", @start_of_last_week, @end_of_last_week).order(created_at: :desc)
  end

  # GET /user_sleeps/1 or /user_sleeps/1.json
  def show
  end

  # GET /user_sleeps/new
  def new
    @user_sleep = UserSleep.new
  end

  # GET /user_sleeps/1/edit
  def edit
  end

  # POST /user_sleeps or /user_sleeps.json
  def create
    @user_sleep = UserSleep.new(user_sleep_params)

    respond_to do |format|
      if @user_sleep.save
        format.html { redirect_to user_sleep_url(@user_sleep), notice: "User sleep was successfully created." }
        format.json { render :show, status: :created, location: @user_sleep }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_sleep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_sleeps/1 or /user_sleeps/1.json
  def update
    respond_to do |format|
      if @user_sleep.update(user_sleep_params)
        format.html { redirect_to user_sleep_url(@user_sleep), notice: "User sleep was successfully updated." }
        format.json { render :show, status: :ok, location: @user_sleep }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_sleep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sleeps/1 or /user_sleeps/1.json
  def destroy
    @user_sleep.destroy

    respond_to do |format|
      format.html { redirect_to user_sleeps_url, notice: "User sleep was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sleep
      @user_sleep = UserSleep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_sleep_params
      params.require(:user_sleep).permit(:user_id)
    end
end
