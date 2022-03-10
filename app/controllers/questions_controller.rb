class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @reply = @question.replies.new
    @all_replies = @question.replies
   
  end
  def edit

  
  end

  def new
  end


end
