class Api::AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
        if current_user
            @answer = Answer.new
        end
  end
  
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
     render json: @answer 
  end

  def index
    @answer = Answer.all
    render json: @answer
  end

  def show
    @answer = Answer.find(params[:id])
    render json: @answer
  end
 

end
