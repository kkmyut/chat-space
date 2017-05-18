class MessagesController < ApplicationController
  def index
    @message =Message.new
    @groups = current_user.groups
    @group = Group.find(params[:group_id])
    @user = current_user
    @users = @group.users
    @messages = @group.messages
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
    redirect_to group_messages_path,notice:"メッセージを送信しました。"
    else
    flash.now[:alert] = "送信失敗しました。"
  end
end
  private

  def message_params
    params.require(:message).permit(:text,:image).merge(group_id: params[:group_id],user_id: current_user.id)
  end

end
