class UsersController < ApplicationController

  def index
    @patients = Patient.all
    @groups = Group.all
  end

  def show

  end

  def group
    @groups = Group.all
  end
end
