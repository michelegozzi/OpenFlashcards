class AnswersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
	@question = Question.find(params[:question_id])
	@answer = @question.answers.create(answer_params)
	redirect_to question_path(@question)
  end

  def update
  end

  def destroy
	@question = Question.find(params[:question_id])
	@answer = @question.answers.find(params[:id])
	@answer.destroy
	redirect_to question_path(@question)
  end
  
  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:text)
    end
end
