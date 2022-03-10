class RepliesController < ApplicationController
  def index
  end

  def show
    @replies = Reply.where(question_id: params[:id])
    @question = Question.find(params[:id])
  end

  def edit
  end

  def new
    
  end
  def create 
    @reply = Reply.new(reply_params)
    respond_to do |format|
      if @reply.save
        format.js
      else
        format.js
        render :'new'
      end
    end
  end
  private
  def reply_params
    params.require(:reply).permit(:reply, :student_id, :question_id)
  end
end
