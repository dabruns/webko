# Der Controller wird fuer die Nachrichten auf
# dem Schwarzen Brett benoetigt
class MessagesController < ApplicationController

  # GET /messages
  def index
    # messages =Message.page(params[:page]).per(6)
    @messages = Message.order('created_at DESC').page(params[:page]).per(5)
    # @messages=Message.all
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1
  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messages }
    end
  end

  # POST /messages
  def create
    @messages = Message.new(params.require(:message).permit(:title, :description, :date, :important))
    if @messages.save
      redirect_to messages_index_path
    else
      render 'new'
    end
  end

  # define params for require
  def message_params
    params.require(:message).permit(:title, :description, :date, :important)
  end

end
