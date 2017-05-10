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
    @group= Group.new(group_params)
    if @group.save
    redirect_to root_path,notice: "グループ作成しました。"
    else
      flash.now[:alert] = "失敗しました。"
    end
  end
  def update
   @group=Group.find(params[:id])
   if
    Group.find(params[:id]).update(group_params)
    redirect_to root_path
  end
  private
  def group_params
    params.require(:group).permit(:name,user_ids: [])
  end
end
