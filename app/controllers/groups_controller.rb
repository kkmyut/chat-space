class GroupsController < ApplicationController
  def index
   @user = current_user.name
   @groups = current_user.groups
  end
  def new
    @group = Group.new
  end
  def edit
    @group= Group.find(params[:id])
  end
  def create
    Group.create(group_params)
    # binding.pry
    redirect_to root_path
  end
  def update
    Group.find(params[:id]).update(group_params)
    redirect_to root_path
  end
  private
  def group_params
    params.require(:group).permit(:name,user_ids: [])
  end
end
