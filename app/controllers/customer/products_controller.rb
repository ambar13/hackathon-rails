class Customer
  class ProductsController < ApplicationController
    before_action :valid_customer, :authenticate_user!
    before_action :set_product, only: [:show]

    # GET /products
    # GET /products.json
    def index
      @products = Product.all.paginate(:page => params[:page], :per_page => 5)
    end

    # GET /products/1
    # GET /products/1.json
    def show; end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
  end
end
