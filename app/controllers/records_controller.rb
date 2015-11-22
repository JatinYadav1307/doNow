class RecordsController < ApplicationController
  before_action :set_record
  before_action :correct_user
  before_action :authenticate_user!
  before_action :authenticate_user_from_token!

  def index
  	@record = current_user.record
  end

  def update
    respond_to do |format|
      if @record.update(record_params)
        format.json { render :index, status: :ok}
      else
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

	private
    def correct_user
      @record = current_user.record
      redirect_to records_path if @record.nil?
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(current_user.record.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_params
      params.require(:record).permit(:health, :experience, :level)
    end
end
