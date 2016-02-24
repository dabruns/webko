class CommentsController < ApplicationController
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.create(params[:comment].permit(:message_id, :text, :user, :message))
    @comment.save

    redirect_to @message
  end

  def destroy
  end
end
