class MessagesController < ApplicationController

before_action :set_message, only: [:index,:new]

  def index
    @group = Group.find(params[:group_id])
    @users = @group.users
    @messages = @group.messages
  end

  def new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
    redirect_to group_messages_path,notice:"メッセージを送信しました。"
    else
    redirect_to group_messages_path,alert:"送信失敗しました。"
  end
end

private

def message_params
  params.require(:message).permit(:text,:image).merge(group_id: params[:group_id],user_id: current_user.id)
end

def set_message
  @message = Message.new
end

end
