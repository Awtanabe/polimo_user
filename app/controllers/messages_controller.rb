class MessagesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.messages.new(message_params)
    @user.save!
    redirect_to root_path
  end

  def destroy
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
