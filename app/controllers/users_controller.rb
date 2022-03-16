class UsersController < ApplicationController

  def index
    @patients = Patient.all
    @groups = Group.all
  end

  def show

  end

  def patient
    @patients = Patient.all
  end
end
