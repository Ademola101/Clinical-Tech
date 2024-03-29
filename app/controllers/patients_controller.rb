class PatientsController < ApplicationController
  before_action :authenticate_user!
  def index
    @patients_without_group = Patient.without_group(current_user.id)
    @sum_of_amount = @patients_without_group.sum('amount')
  end

  def new
    @patient = Patient.new
    
    # 3.times {@patient.build_patients_group}
    
  end

  def create
    @patient = Patient.new(patient_params)
    @patient.patient_creator_id= current_user.id
    if @patient.save && @patient.group.present?
      flash[:notice] = "Patient #{@patient.name} created "
      redirect_to my_patients_path
    elsif @patient.save && @patient.group.nil?
      flash[:notice] = "Patient #{@patient.name} created without a group"
      redirect_to patients_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit( :name, :amount,:group_id)
  end
end
