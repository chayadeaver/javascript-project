class OrderItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    chosen_item = Item.find(params[:item_id])
    current_cart = @current_cart

    if current_cart.items.include?(chosen_item)
      order_item = current_cart.order_items.find_by(item_id: chosen_item)

      order_item.qunatity += 1
    else
      order_item = OrderItem.new
      order_item.cart = current_cart
      order_item.item = chosen_item
    end
    order_item.save

  end

  def add_quantity
    order_item.quantity += 1
    order_item.save

  end

  def reduce_quantity
    if order_item.qunatity > 1
      order_item.qunatity -= 1
    end
    order_item.save
  end

  def destroy
    order_item = OrderItem.find_by(id: params[:id])
    order_item.destroy
  end

  private

    def order_item_params
      params.require(:order_item).permit(:quantity, :item_id, :cart_id)
    end
end
