class DailiesController < ApplicationController
  before_action :set_daily, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authenticate_user_from_token!

  # GET /dailies
  # GET /dailies.json
  def index
    @dailies = current_user.dailies
  end

  # GET /dailies/1
  # GET /dailies/1.json
  def show
  end

  # GET /dailies/new
  def new
    @daily = current_user.dailies.build
  end

  # GET /dailies/1/edit
  def edit
  end

  # POST /dailies
  # POST /dailies.json
  def create
    @daily = current_user.dailies.build(daily_params)

    respond_to do |format|
      if @daily.save
        format.html { redirect_to @daily, notice: 'Daily was successfully created.' }
        format.json { render :show, status: :created, location: @daily }
      else
        format.html { render :new }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dailies/1
  # PATCH/PUT /dailies/1.json
  def update
    respond_to do |format|
      if @daily.update(daily_params)
        format.html { redirect_to @daily, notice: 'Daily was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily }
      else
        format.html { render :edit }
        format.json { render json: @daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dailies/1
  # DELETE /dailies/1.json
  def destroy
    @daily.destroy
    respond_to do |format|
      format.html { redirect_to dailies_url, notice: 'Daily was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def correct_user
      @daily = current_user.dailies.find_by(id: params[:id])
      redirect_to dailies_path if @daily.nil?
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @daily = Daily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_params
      params.require(:daily).permit(:title, :notes, :difficulty, :startDate, :streak, :priority, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, {:tag_ids => []})
    end
end
