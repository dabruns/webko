# Der Controller wird fuer die Kommentarfunktion vom Schwarzen Brett benoetigt
class CommentsController < ApplicationController
  load_and_authorize_resource
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.create(params[:comment].permit(:message_id, :text, :user, :message))
    @comment.save

    redirect_to @message
  end

  def destroy
  end

  def comment_params
    params.require(:comment).permit(:message_id, :text, :user, :message)
  end

end
