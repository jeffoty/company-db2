class FinancialInfosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        financial_infos = FinancialInfo.all
        render json: financial_infos
    end

    def show
        financial_info = find_financial_info
        render json: financial_info
    end

    def update
        financial_info = find_financial_info
        financial_info.update!(financial_info_params)
        render json: financial_info
    end

    def destroy
        financial_info = find_financial_info
        financial_info.destroy
        head :no_content, status: :deleted

    end

    private

    def find_financial_info
        Financial_info.find!(params[:id])
    end

    def financial_info_params
        params.require(:financial_info).permit(:invoice_number, :transaction_type, :amount, :location_id)
    end

    def record_not_found_method
        render json: {error: "financial_infos not found"}, status: :not_found
    end
end
