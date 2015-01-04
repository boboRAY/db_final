class ToBuysController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_to_buy, only: [:show, :edit, :update, :destroy]

  # GET /to_buys
  # GET /to_buys.json
  def index
    @to_buys = current_user.to_buys
  end

  # GET /to_buys/1
  # GET /to_buys/1.json
  def show
  end

  # GET /to_buys/new
  def new
    @to_buy = ToBuy.new
  end

  # GET /to_buys/1/edit
  def edit
  end

  # POST /to_buys
  # POST /to_buys.json
  def create
    dish = Dish.find(params[:dish_id])
    @to_buy = ToBuy.new({dish_id: dish.id})
    @to_buy.user = current_user

    respond_to do |format|
      if @to_buy.save
        format.html { redirect_to dishes_path(rid: dish.restaurant.id), notice: 'To buy was successfully created.' }
        format.json { render :show, status: :created, location: @to_buy }
      else
        format.html { redirect_to dishes_path(rid: dish.restaurant.id), notice: 'Error when creating to_buys.' }
        format.json { render json: @to_buy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /to_buys/1
  # PATCH/PUT /to_buys/1.json
  def update
    respond_to do |format|
      if @to_buy.update(to_buy_params)
        format.html { redirect_to @to_buy, notice: 'To buy was successfully updated.' }
        format.json { render :show, status: :ok, location: @to_buy }
      else
        format.html { render :edit }
        format.json { render json: @to_buy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /to_buys/1
  # DELETE /to_buys/1.json
  def destroy
    @to_buy.destroy
    respond_to do |format|
      format.html { redirect_to to_buys_url, notice: 'To buy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_buy
      @to_buy = ToBuy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def to_buy_params
      params.require(:to_buy).permit(:user_id, :dish_id)
    end
end
