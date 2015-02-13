class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def edit
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to messages_path
    end
  end

  def update
    @message = Message.find(params[:id])

    if @user.update(message_params)
      redirect_to users_path
    end
  end

  private
  def message_params
    params.require(:message).permit(:author, :message, :anonymous, :image_pick, :title)
  end

end
