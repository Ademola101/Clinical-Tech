class PatientsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @patients_without_group = Patient.without_group(current_user.id)
  end

  def new
    @patient = Patient.new
    
    # 3.times {@patient.build_patients_group}
    
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.patient_creator_id= current_user.id
    if @patient.save
      redirect_to my_patients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit( :name, :amount,:groups_id)
  end
end
