class OrderitemsController < ApplicationController

  def index
    redirect_to order_path(current_order.id)
  end

  def create
    @product = Product.find(params[:product_id])
    @orderitem = current_order.orderitems.create(product: @product, quantity: params[:quantity])
    redirect_to order_path(current_order.id)
  end

  def update
    #params[:quantity].each do |item_id, quantity|
  end


end