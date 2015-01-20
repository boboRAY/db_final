class RestaurantFeedbacksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_restaurant_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @restaurant_feedback = RestaurantFeedback.new(restaurant_feedback_params)
    @restaurant_feedback.user = current_user

    respond_to do |format|
      if @restaurant_feedback.save
        format.html { redirect_to restaurants_path, notice: '已留言！' }
        format.json { render :show, status: :created, location: @restaurant_feedback }
      else
        format.html { redirect_to restaurants_path, notice: 'Restaurant feedback was not created.' }
        format.json { render json: @restaurant_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_feedback_params
      params.require(:restaurant_feedback).permit(:content, :restaurant_id)
    end
end
