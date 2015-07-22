class PartsController < ApplicationController
  before_action :set_part, only: [:show, :edit, :update, :destroy]

  def index
    @parts = Part.all
  end

  def show
    
  end

  def new
    @order = Order.find(params[:order_id])
    @part = Part.new
  end

  def edit
  end

  def create
    @order = Order.find(params[:order_id])
    @part = @order.parts.new(part_params)

    respond_to do |format|
      if @part.save
        format.html { redirect_to @order, notice: 'Part was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @part.update(part_params)
        format.html { redirect_to @part, notice: 'Part was successfully updated.' }
        format.json { render :show, status: :ok, location: @part }
      else
        format.html { render :edit }
        format.json { render json: @part.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_all, notice: 'Part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def view
    @parts = Part.all.reorder(:part_number)
  end

  private
    def set_part
      @part = Part.find(params[:id])
    end

    def part_params
      params.require(:part).permit(:part_number, :description, :quantity, :order_id)
    end
end
