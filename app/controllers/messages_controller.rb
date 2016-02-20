class MessagesController < ApplicationController
  def index
    @messages =Message.page(params[:page]).per(10)
  end

  def new
    @messages = Message.new
  end

  def create
    @messages = Message.new(params.require(:message).permit(:title, :description, :date, :important))
    if @messages.save
      redirect_to root_path
    else
      render "new"
    end
  end
end
