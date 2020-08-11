class OrdersController < ApplicationController
  load_and_authorize_resource
  #before_validation :set_total!

  # GET /orders
  def index
    @orders = Order.all
    render json: @orders, status: :ok
  end

  def index_by_user
    @orders_by_user = current_user.orders
    byebug
    render json: @orders_by_user, status: :ok
  end

  def show
    @order = current_user.orders.find(params[:id])
    render json: @order, status: :ok
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      render json: @order, status: :created
    else
      render json: { erros: @order.errors }, status: 422
    end
  end

  private
  def order_params
    params.require(:order).permit(:total, :user_id, :products => [:name, :price, :quantity, :type_product_id, :presentation_product_id])
  end
end
