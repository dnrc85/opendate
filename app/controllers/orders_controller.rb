class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all.reorder(:printer, :due_date)
  end

  def show
    
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def regionexport
    @orders = Order.where(:region => "Export")
  end
  
  def regionuk
    @orders = Order.where(:region => "UK")
  end
  
  def regionusa
    @orders = Order.where(:region => "USA")
  end
  
  def regionfrance
    @orders = Order.where(:region => "France")
  end
  
  def regiongermany
    @orders = Order.where(:region => "Germany")
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end
    
    def order_params
      params.require(:order).permit(:customer, :order_number, :order_date, :due_date, :region, :printer, :quantity, :status, :notes)
    end
end
