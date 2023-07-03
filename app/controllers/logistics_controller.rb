class LogisticsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        logistics = Logistic.all
        render json: logistics
    end

    def show
        logistic = find_logistic
        render json: logistic
    end

    def update
        logistic = find_logistic
        logistic.update!(logistic_params)
        render json: logistic
    end

    def create
        logistic = Logistic.new(logistic_params)
        logistic.save!
        render json: logistic, status: :created
    end

    def destroy
        logistic = find_logistic
        logistic.destroy
        head :no_content, status: :deleted

    end

    private

    def find_logistic
        Logistic.find!(params[:id])
    end

    def logistic_params
        params.require(:logistic).permit(:tracking_number, :shiping_date, :reciving_date, :order_id)
    end

    def record_not_found_method
        render json: {error: "Logistics not found"}, status: :not_found
    end
end
