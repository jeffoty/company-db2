class WardsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        wards = Ward.all
        render json: wards
    end

    def show
        ward = find_wards
        render json: ward
    end

    def update
        ward = find_wards
        ward.update!(ward_params)
        render json: ward
    end

    def create
        ward = ward.new(ward_params)
        ward.save!
        render json: ward, status: :created
    end

    def destroy
        ward = find_wards
        ward.destroy
        head :no_content, status: :no_content
    end



    private
    def record_not_found_method
        render json: { error: 'ward not found' }, status: :not_found
    end

    def find_wards
        Ward.find!(params[:id])
    end

    def ward_params
        params.require(:role).permit(:constituency_id, :name)
    end
end
