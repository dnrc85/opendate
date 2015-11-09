class LowStocksController < ApplicationController
  before_action :set_low_stock, only: [:show, :edit, :update, :destroy]

  # GET /low_stocks
  # GET /low_stocks.json
  def index
    @low_stocks = LowStock.all
  end

  # GET /low_stocks/1
  # GET /low_stocks/1.json
  def show
  end

  # GET /low_stocks/new
  def new
    @low_stock = LowStock.new
  end

  # GET /low_stocks/1/edit
  def edit
  end

  # POST /low_stocks
  # POST /low_stocks.json
  def create
    # Hello bobo! So, your issue was that you weren't setting the user_id when you were creating the @low_stock record
    # You can do that in two ways, you could create the @low_stock like you were doing, and then on a new line have:
    # @low_stock.user = current_user (which you've already specified)
    # or you can do the below, where you have @low_stock = current_user.low_stocks.new instead of @low_stock = LowStock.new
    # I hope you have a wonderful day ok bye lots of love bye
    @low_stock = current_user.low_stocks.new(low_stock_params)

    respond_to do |format|
      if @low_stock.save
        format.html { redirect_to low_stocks_path, notice: 'Low stock was successfully created.' }
        format.json { render :show, status: :created, location: @low_stock }
      else
        format.html { render :new }
        format.json { render json: @low_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /low_stocks/1
  # PATCH/PUT /low_stocks/1.json
  def update
    respond_to do |format|
      if @low_stock.update(low_stock_params)
        format.html { redirect_to @low_stock, notice: 'Low stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @low_stock }
      else
        format.html { render :edit }
        format.json { render json: @low_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /low_stocks/1
  # DELETE /low_stocks/1.json
  def destroy
    @low_stock.destroy
    respond_to do |format|
      format.html { redirect_to low_stocks_url, notice: 'Low stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_low_stock
      @low_stock = LowStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def low_stock_params
      params.require(:low_stock).permit(:part_number, :description, :quantity_in_stock, :quantity_required, :user_id)
    end
end
