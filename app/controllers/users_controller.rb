class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @patients = Patient.all
    @groups = Group.all
  end

  def show

  end

  def patient
    @patients_with_group = Patient.with_group(current_user.id)
    @sum_of_amount = @patients_with_group.sum('amount')
  end

end
