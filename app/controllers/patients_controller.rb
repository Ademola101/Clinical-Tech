class PatientsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = current_user.created_patients.new(patient_params)
    if @patient.save
      redirect_to my_patients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :amount)
  end
end
