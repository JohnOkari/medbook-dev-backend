class TblServicesController < ApplicationController

    # tbl_services_controller.rb
class TblServicesController < ApplicationController
    def index
      @services = TblService.all
      render json: @services
    end

    # Retrieve a specific service by ID.
    def show
      @service = TblService.find(params[:id])
      render json: @service
    end
  
    # Create a new service.
    def create
      @service = TblService.new(service_params)
      if @service.save
        render json: @service, status: :created
      else
        render json: @service.errors, status: :unprocessable_entity
      end
    end
  
    # Update an existing service by ID.
    def update
      @service = TblService.find(params[:id])
      if @service.update(service_params)
        render json: @service
      else
        render json: @service.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a specific service by ID.
    def destroy
      @service = TblService.find(params[:id])
      @service.destroy
      head :no_content
    end
  
    private
  
    def service_params
      params.require(:service).permit(:service_name)
    end
  end
  
end
