class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        orders = Order.all
        render json: orders
    end

    def show
        order = find_order
        render json: order
    end

    def update
        order = find_order
        order.update!(order_params)
        render json: order
    end

    def destroy
        order = find_order
        order.destroy
        head :no_content, status: :deleted

    end

    private

    def find_order
        Order.find!(params[:id])
    end

    def order_params
        params.require(:order).permit(:type, :date, :quantity, :amount_paid, :payment_code, :status, :product)
    end

    def record_not_found_method
        render json: {error: "Location not found"}, status: :not_found
    end

end
