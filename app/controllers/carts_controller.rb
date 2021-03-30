class CartsController < ApplicationController
  defore_action :authenticate user!

  def update
    product = params[:cart][:product_id]
    quantity = params[:cart][:product_id]

    current_order.add_product(product, quantity)

    redirect_to root_url, notice: 'Product added successfuly'
  end

  def show
    @order = current_order #esto es un helper
  end
end
