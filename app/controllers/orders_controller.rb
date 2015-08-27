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
        format.html { redirect_to orders_path, notice: 'Order was successfully updated.' }
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

  def region
    @orders = Order.where("region = ?", params[:region]).reorder(:due_date, :printer)
  end
  
  def printerparts
    @orders = Order.where("printer = ?", params[:printer])
  end
  
  def complete
    @order = Order.find(params[:id])
    time = Time.now
    @order.update_attribute(:completed_at, time.to_formatted_s(:short))
    redirect_to orders_path, notice: "Order archived as shipped"
  end
  
  def archived
    @orders = Order.all
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end
    
    def order_params
      params.require(:order).permit(:customer, :order_number, :order_date, :due_date, :region, :printer, :quantity, :status, :notes)
    end
end
