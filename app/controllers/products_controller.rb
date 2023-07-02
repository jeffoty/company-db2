class ProductsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        products = Product.all
        render json: products
    end

    def show
        product = find_product
        render json: product
    end

    def update
        product = find_product
        product.update!(product_params)
        render json: product
    end

    def destroy
        product = find_product
        product.destroy
        head :no_content, status: :deleted

    end

    private

    def find_product
        Product.find!(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :description, :price)
    end

    def record_not_found_method
        render json: {error: "Location not found"}, status: :not_found
    end

end
