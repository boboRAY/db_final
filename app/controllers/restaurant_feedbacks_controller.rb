class RestaurantFeedbacksController < ApplicationController
  before_action :set_restaurant_feedback, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_feedbacks
  # GET /restaurant_feedbacks.json
  def index
    @restaurant_feedbacks = RestaurantFeedback.all
  end

  # GET /restaurant_feedbacks/1
  # GET /restaurant_feedbacks/1.json
  def show
  end

  # GET /restaurant_feedbacks/new
  def new
    @restaurant_feedback = RestaurantFeedback.new
  end

  # GET /restaurant_feedbacks/1/edit
  def edit
  end

  # POST /restaurant_feedbacks
  # POST /restaurant_feedbacks.json
  def create
    @restaurant_feedback = RestaurantFeedback.new(restaurant_feedback_params)

    respond_to do |format|
      if @restaurant_feedback.save
        format.html { redirect_to @restaurant_feedback, notice: 'Restaurant feedback was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_feedback }
      else
        format.html { render :new }
        format.json { render json: @restaurant_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_feedbacks/1
  # PATCH/PUT /restaurant_feedbacks/1.json
  def update
    respond_to do |format|
      if @restaurant_feedback.update(restaurant_feedback_params)
        format.html { redirect_to @restaurant_feedback, notice: 'Restaurant feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_feedback }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_feedbacks/1
  # DELETE /restaurant_feedbacks/1.json
  def destroy
    @restaurant_feedback.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_feedbacks_url, notice: 'Restaurant feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_feedback
      @restaurant_feedback = RestaurantFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_feedback_params
      params.require(:restaurant_feedback).permit(:content, :restaurant_id, :user_id)
    end
end
