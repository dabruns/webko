class MessagesController < ApplicationController
  def index
    #messages =Message.page(params[:page]).per(6)
    @messages=Message.order('created_at DESC').page(params[:page]).per(6)
  end

  def new
    @messages = Message.new
  end

  def show
    @messages=Message.find(params[:id])

    respond_to do |format|
      format.html #show.html.erb
      format.json {render :json =>@messages}
    end
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
