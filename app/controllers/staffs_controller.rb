class StaffsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        staffs = Staff.all
        render json: staffs
    end

    def show
        staff = find_staffs
        render json: staff
    end

    def update
        staff = find_staffs
        staff.update!(staff_params)
        render json: staff
    end

    def create
        staff = Staff.new(staff_params)
        staff.save!
        render json: role, status: :created
    end

    def destroy
        staff = find_staffs
        staff.destroy
        head :no_content, status: :no_content
    end



    private
    def record_not_found_method
        render json: { error: 'Staff not found' }, status: :not_found
    end

    def find_staffs
        Staff.find!(params[:id])
    end

    def staff_params
        params.require(:role).permit(:location_id, :first_name , :second_name, :role_id)
    end
end
