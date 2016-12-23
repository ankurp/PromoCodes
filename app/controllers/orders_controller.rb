class OrdersController < ApplicationController

  # GET /orders/new
  def new
    @order = Order.new(items: items, promocode: promocode_params[:promocode])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(items: items, promocode: promocode_params[:promocode])

    respond_to do |format|
      if @order.save
        format.html { redirect_to new_order_path, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def items
      [
        Item.new(name: "Item 1", price: 100),
        Item.new(name: "Item 2", price: 40)
      ]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promocode_params
      params.permit(:promocode)
    end
end
