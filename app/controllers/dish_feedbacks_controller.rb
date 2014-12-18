class DishFeedbacksController < ApplicationController
  before_action :set_dish_feedback, only: [:show, :edit, :update, :destroy]

  # GET /dish_feedbacks
  # GET /dish_feedbacks.json
  def index
    @dish_feedbacks = DishFeedback.all
  end

  # GET /dish_feedbacks/1
  # GET /dish_feedbacks/1.json
  def show
  end

  # GET /dish_feedbacks/new
  def new
    @dish_feedback = DishFeedback.new
  end

  # GET /dish_feedbacks/1/edit
  def edit
  end

  # POST /dish_feedbacks
  # POST /dish_feedbacks.json
  def create
    @dish_feedback = DishFeedback.new(dish_feedback_params)

    respond_to do |format|
      if @dish_feedback.save
        format.html { redirect_to @dish_feedback, notice: 'Dish feedback was successfully created.' }
        format.json { render :show, status: :created, location: @dish_feedback }
      else
        format.html { render :new }
        format.json { render json: @dish_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_feedbacks/1
  # PATCH/PUT /dish_feedbacks/1.json
  def update
    respond_to do |format|
      if @dish_feedback.update(dish_feedback_params)
        format.html { redirect_to @dish_feedback, notice: 'Dish feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_feedback }
      else
        format.html { render :edit }
        format.json { render json: @dish_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_feedbacks/1
  # DELETE /dish_feedbacks/1.json
  def destroy
    @dish_feedback.destroy
    respond_to do |format|
      format.html { redirect_to dish_feedbacks_url, notice: 'Dish feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_feedback
      @dish_feedback = DishFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_feedback_params
      params.require(:dish_feedback).permit(:content, :dish_id, :user_id)
    end
end
