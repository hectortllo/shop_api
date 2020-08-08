class PresentationProductController < ApplicationController
  load_and_authorize_resource

  # POST /presentation_product
  def create
    @presentation_product = PresentationProduct.create!(presentation_product_params)
    render json: @presentation_product, status: :created
  end

  # GET /presentation_product
  def index
    @presentation_products = PresentationProduct.all
    render json: @presentation_products, status: :ok
  end

  # GET /presentation_product/{id}
  def show
    @presentation_product = PresentationProduct.find(params[:id])
    render json: @presentation_product, status: :ok
  end

  # PUT /presentation_product/{id}
  def update
    @presentation_product = PresentationProduct.find(params[:id])
    @presentation_product.update!(presentation_product_params)
    render json: @presentation_product, status: :ok
  end

  private
  def presentation_product_params
    params.require(:presentation_product).permit(:name_presentation)
  end
end
