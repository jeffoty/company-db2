class DepoSitesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
  
    def index
      depo_sites = Depo_site.all
      render json: depo_sites
    end
  
    def show
      depo_site = find_depo_site
      render json: depo_site
    end
  
    def create
      depo_site = Depo_site.create!(depo_site_params)
      render json: depo_site, status: :created
    end
  
    def update
      depo_site = find_depo_site
      depo_site.update!(depo_site_params)
      render json: depo_site
    end
  
    def destroy
      depo_site = find_depo_site
      depo_site.destroy
      head :no_content, status: :no_content
    end
  
    private
  
    def find_depo_site
      Depo_site.find(params[:id])
    end
  
    def depo_site_params
      params.require(:depo_site).permit(:name)
    end
  
    def record_not_found_method
      render json: { error: "Depo site not found" }, status: :not_found
    end
end
