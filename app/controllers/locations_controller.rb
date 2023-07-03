class LocationsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        locations = Location.all
        render json: locations
    end

    def show
        location = find_location
        render json: location
    end

    def update
        location = find_locations
        location.update!(location_params)
        render json: location
    end

    def create
        location = Location.new(location_params)
        location.save!
        render json: location, status: :created
    end

    def destroy
        location = Location.find(params[:id])
        location.destroy
        head :no_content, status: :deleted

    end

    private

    def find_locations
        Location.find!(params[:id])
    end

    def location_params
        params.require(:location).permit(:name, :deposite_id)
    end

    def record_not_found_method
        render json: {error: "Location not found"}, status: :not_found
    end

end
