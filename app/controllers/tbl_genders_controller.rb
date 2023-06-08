class TblGendersController < ApplicationController

    # tbl_genders_controller.rb
class TblGendersController < ApplicationController
    def index
      @genders = TblGender.all
      render json: @genders
    end

    # Retrieve a specific gender by ID.
    def show
      @gender = TblGender.find(params[:id])
      render json: @gender
    end
    
    # Create a new gender.
    def create
      @gender = TblGender.new(gender_params)
      if @gender.save
        render json: @gender, status: :created
      else
        render json: @gender.errors, status: :unprocessable_entity
      end
    end
  
    # Update an existing gender by ID.
    def update
      @gender = TblGender.find(params[:id])
      if @gender.update(gender_params)
        render json: @gender
      else
        render json: @gender.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a specific gender by ID.
    def destroy
      @gender = TblGender.find(params[:id])
      @gender.destroy
      head :no_content
    end
  
    private
  
    def gender_params
      params.require(:gender).permit(:gender_name)
    end
  end
  
end
