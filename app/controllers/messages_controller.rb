# Der Controller wird fuer die Nachrichten auf
# dem Schwarzen Brett benoetigt
class MessagesController < ApplicationController
  load_and_authorize_resource
  def index
    # messages =Message.page(params[:page]).per(6)
    @messages = Message.order('created_at DESC').page(params[:page]).per(5)
    # @messages=Message.all
  end

  def new
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messages }
    end
  end

  def create
    @messages = Message.new(params.require(:message).permit(:title, :description, :date, :important))
    if @messages.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end
