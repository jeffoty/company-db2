class RolesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        roles = Role.all
        render json: roles
    end

    def show
        role = find_roles
        render json: role
    end

    def update
        role = find_roles
        role.update!(role_params)
        render json: role
    end

    def create
        role = Role.new(role_params)
        role.save!
        render json: role, status: :created
    end

    def destroy
        role = find_roles
        role.destroy
        head :no_content, status: :no_content
    end



    private
    def record_not_found_method
        render json: { error: 'Role not found' }, status: :not_found
    end

    def find_roles
        Role.find!(params[:id])
    end

    def role_params
        params.require(:role).permit(name_ids: [])
        # params.require(:cleaner).permit(city_ids: [])
    end
end
