class TblPatientsController < ApplicationController

    # tbl_patients_controller.rb
class TblPatientsController < ApplicationController
    def index
      @patients = TblPatient.all
      render json: @patients
    end
    
    # Retrieve a specific patient by ID.
    def show
      @patient = TblPatient.find(params[:id])
      render json: @patient
    end
  
    # Create a new patient.
    def create
      @patient = TblPatient.new(patient_params)
      if @patient.save
        render json: @patient, status: :created
      else
        render json: @patient.errors, status: :unprocessable_entity
      end
    end
    
    # Update an existing patient by ID.
    def update
      @patient = TblPatient.find(params[:id])
      if @patient.update(patient_params)
        render json: @patient
      else
        render json: @patient.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a specific patient by ID.
    def destroy
      @patient = TblPatient.find(params[:id])
      @patient.destroy
      head :no_content
    end
  
    private
  
    def patient_params
      params.require(:patient).permit(:name, :age, :gender_id, :service_id)
    end
  end
  
end
