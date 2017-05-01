class ChatsController < ApplicationController
  def index
   @user = current_user.name
   @groups = current_user.groups
   @group = Group.find(params[:group_id])
   @users = @group.users
  end
end