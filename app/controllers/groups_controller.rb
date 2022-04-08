class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(groups_params)
    if @group.save
      redirect_to my_groups_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  private

  def groups_params
    params.require(:group).permit(:name, :icon)
  end
end
