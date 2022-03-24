class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
    @group = current_user.created_groups.build(groups_params)
    if @group.save
      redirect_to my_groups_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def groups_params
    params.require(:group).permit(:name, :icon)
  end
end
