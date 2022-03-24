class PatientsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
    
    # 3.times {@patient.build_patients_group}
    @patient.build_patients_group
    @patient.build_patient_creator
  end

  def create
    @patient = current_user.patients.build(patient_params)
    @patient.patient_creator= current_user
    if @patient.save
      redirect_to my_patients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:patient_creator_id, :name, :amount, patients_groups_attributes: [:name, :icon])
  end
end
