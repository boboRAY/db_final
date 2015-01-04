class DriverFeedbacksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_driver_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @driver_feedback = DriverFeedback.new(driver_feedback_params)
    @driver_feedback.user = current_user

    respond_to do |format|
      if @driver_feedback.save
        format.html { redirect_to order_path(params[:order_id]), notice: 'Dish feedback was successfully created.' }
        format.json { render :show, status: :created, location: @driver_feedback }
      else
        format.html { redirect_to order_path(params[:order_id]), notice: 'Dish feedback was not created.' }
        format.json { render json: @driver_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def driver_feedback_params
      params.require(:driver_feedback).permit(:content, :driver_id)
    end
end
