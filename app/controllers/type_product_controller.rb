class TypeProductController < ApplicationController
  load_and_authorize_resource

  # POST /type_product
  def create
    @type_product = TypeProduct.create!(type_product_params)
    render json: @type_product, status: :created
  end

  # GET /type_product
  def index
    @type_products = TypeProduct.all
    render json: @type_products, status: :ok
  end

  # GET /type_product/{id}
  def show
    @type_product = TypeProduct.find(params[:id])
    render json: @type_product, status: :ok
  end

  # PUT /type_product/{id}
  def update
    @type_product = TypeProduct.find(params[:id])
    @type_product.update!(type_product_params)
    render json: @type_product, status: :ok
  end

  private
  def type_product_params
    params.require(:type_product).permit(:name_type_product)
  end
end
