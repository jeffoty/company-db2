class InventorysController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        inventorys = Inventory.all
        render json: inventorys
    end

    def show
        inventory = find_inventory
        render json: inventory
    end

    def update
        inventory = find_inventory
        inventory.update!(inventory_params)
        render json: inventory
    end

    def destroy
        inventory = find_inventory
        inventory.destroy
        head :no_content, status: :deleted

    end

    private

    def find_inventory
        Inventory.find!(params[:id])
    end

    def inventory_params
        params.require(:inventory).permit(:product_id, :location_id, :quantity)
    end

    def record_not_found_method
        render json: {error: "Inventorys not found"}, status: :not_found
    end
end
