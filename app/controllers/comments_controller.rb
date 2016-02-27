# Der Controller wird fuer die Kommentarfunktion vom Schwarzen Brett benoetigt
class CommentsController < ApplicationController


  # POST /messages
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.create(params[:comment].permit(:message_id, :text, :user, :message))
    @comment.save

    redirect_to @message
  end

  # DELETE /messages/1
  def destroy
  end

  # define params for require
  def comment_params
    params.require(:comment).permit(:message_id, :text, :user, :message)
  end
end
