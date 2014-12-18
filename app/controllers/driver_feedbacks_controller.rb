class DriverFeedbacksController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_driver_feedback, only: [:show, :edit, :update, :destroy]

  # GET /driver_feedbacks
  # GET /driver_feedbacks.json
  def index
    @driver_feedbacks = DriverFeedback.all
  end

  # GET /driver_feedbacks/1
  # GET /driver_feedbacks/1.json
  def show
  end

  # GET /driver_feedbacks/new
  def new
    @driver_feedback = DriverFeedback.new
  end

  # GET /driver_feedbacks/1/edit
  def edit
  end

  # POST /driver_feedbacks
  # POST /driver_feedbacks.json
  def create
    @driver_feedback = DriverFeedback.new(driver_feedback_params)
    @driver_feedback.user = current_user

    respond_to do |format|
      if @driver_feedback.save
        format.html { redirect_to @driver_feedback, notice: 'Driver feedback was successfully created.' }
        format.json { render :show, status: :created, location: @driver_feedback }
      else
        format.html { render :new }
        format.json { render json: @driver_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /driver_feedbacks/1
  # PATCH/PUT /driver_feedbacks/1.json
  def update
    respond_to do |format|
      if @driver_feedback.update(driver_feedback_params)
        format.html { redirect_to @driver_feedback, notice: 'Driver feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver_feedback }
      else
        format.html { render :edit }
        format.json { render json: @driver_feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /driver_feedbacks/1
  # DELETE /driver_feedbacks/1.json
  def destroy
    @driver_feedback.destroy
    respond_to do |format|
      format.html { redirect_to driver_feedbacks_url, notice: 'Driver feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver_feedback
      @driver_feedback = DriverFeedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_feedback_params
      params.require(:driver_feedback).permit(:description, :driver_id, :user_id)
    end
end
