class ChatsController < ApplicationController
  def index
   @groups = current_user.groups
   @group = Group.find(params[:group_id])
   @users = @group.users
  end
end