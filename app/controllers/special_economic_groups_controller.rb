class SpecialEconomicGroupsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        seo = SpecialEconomicGroup.all
        render json: seo
    end

    def show
        seo = find_seo
        render json: seo
    end

    def update
        seo = find_seo
        seo.update!(seo_params)
        render json: seo
    end

    def destroy
        seo = seo.find(params[:id])
        seo.destroy
        head :no_content, status: :deleted

    end

    private

    def find_seo
        SpecialEconomicGroup.find!(params[:id])
    end

    def seo_params
        params.require(:seo).permit(:name, group_leader_id: find_group_leader_id, group_size: calculate_group_size, :constituency_id, :ward_id)
    end

    def record_not_found_method
        render json: {error: "seo not found"}, status: :not_found
    end

    def find_group_leader_id
        User.find_by(role: 'group_leader')&.id
    end

    def calculate_group_size
        User.where(special_economic_group_id: params[:id]).count
    end

end
