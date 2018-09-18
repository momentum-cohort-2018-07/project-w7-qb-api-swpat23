class Api::QuestionsController < ApplicationController
  
    skip_before_action :verify_authentication, only: [:index, :show]
    before_action :set_question, only: [:show]
  
    def index
      @questions = Question.all
      render json: @questions
    end
  
    def show
      @answers = @question.answers
      @answer = Answer.new(params[:question_id])
      render json: @answer
    end
  
    def edit
      @question = Question.find(params[:id])
    end
  
    def create
      @question = Question.new(question_params)
  
      if @question.save
        render json: @question, status: :created, location: @question
      else
          render json: @question.errors, status: :unprocessable_entity
      end
    end
  
  
    private
  
    def set_question
      @question = Question.find(params[:id])
    end
end
