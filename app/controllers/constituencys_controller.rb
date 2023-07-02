class ConstituencysController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        constituencys = Constituency.all
        render json: constituencys
    end

    def show
        constituency = find_constituencys
        render json: constituency
    end

    def update
        constituency = find_constituencys
        constituency.update!(constituency_params)
        render json: constituency
    end

    def create
        constituency = constituency.new(constituency_params)
        constituency.save!
        render json: role, status: :created
    end

    def destroy
        constituency = find_constituencys
        constituency.destroy
        head :no_content, status: :no_content
    end



    private
    def record_not_found_method
        render json: { error: 'constituency not found' }, status: :not_found
    end

    def find_constituencys
        Constituency.find!(params[:id])
    end

    def constituency_params
        params.require(:role).permit(:name, :depo_site_id)
    end
end
