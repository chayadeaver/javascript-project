class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    orders = current_user.orders
    # orders = Order.all
    render json: orders.to_json(include: [:name, :email, :address] )
  end

  def show
    order = Order.find_by(id: params[:id])
    authorize_user_resource(order)
    render_resource(order, with: [:name, :email, :address])
  end

  def create
    order = current_user.orders.new(order_params)
    @current_cart.order_items.each do |item|
      order.order_items << item
      item.cart_id = nil
    end
    order.save
    Cart.destroy(session[:cart_id])
    session[:cart_id] = nil
    render_resource(order)
  end

  private

    def order_params
      params.require(:order).permit(:name, :email, :address, :user_id)
    end
end

