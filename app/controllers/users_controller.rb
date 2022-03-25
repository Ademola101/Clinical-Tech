class UsersController < ApplicationController

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

  def group
    @groups = Group.all
  end
end
