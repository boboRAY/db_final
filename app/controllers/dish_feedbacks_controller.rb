class DishFeedbacksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_dish_feedback, only: [:show, :edit, :update, :destroy]

  def create
    @dish_feedback = DishFeedback.new(dish_feedback_params)
    @dish_feedback.user = current_user

    respond_to do |format|
      if @dish_feedback.save
        format.html { redirect_to order_path(params[:order_id]), notice: '已留言！' }
        format.json { render :show, status: :created, location: @dish_feedback }
      else
        format.html { redirect_to order_path(params[:order_id]), notice: 'Dish feedback was not created.' }
        format.json { render json: @dish_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_feedback_params
      params.require(:dish_feedback).permit(:content, :dish_id)
    end
end
