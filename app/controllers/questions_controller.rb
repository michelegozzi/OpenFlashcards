class QuestionsController < ApplicationController
before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    #@questions = Question.allow
	@page = 1
	@page = (params[:page].to_i) unless params[:page].nil? 
	@offset = (@page - 1) * 10
	@questions = Question.where('topic_id = ?', params[:topic_id]).paginate(page: params[:page], per_page: 10)
	@topic = Topic.find(params[:topic_id])
  end
  
  # GET /questions/test
  def test
    
	@questions = Question.where('topic_id = ?', params[:topic_id])
	@topic = Topic.find(params[:topic_id])
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
	@topic = Topic.find(@question.topic_id)
  end

  # GET /questions/new
  def new
    #@question = Question.new
	@topic = Topic.find(params[:topic_id])
  end

  # GET /questions/1/edit
  def edit
	@topic = Topic.find(@question.topic_id)
  end

  # POST /questions
  # POST /questions.json
  def create
	@topic = Topic.find(params[:topic_id])
	@question = @topic.questions.create(question_params)
	
    respond_to do |format|
      if @question.save
	     flash[:success] = 'Question was successfully created.'
        format.html { redirect_to  topic_questions_path(@topic) }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
	@topic = Topic.find(@question.topic_id)
    respond_to do |format|
      if @question.update(question_params)
	    flash[:success] = 'Question was successfully updated.'
        format.html { redirect_to topic_questions_path(@topic) }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
	@topic = Topic.find(@question.topic_id)
    @question.destroy
    respond_to do |format|
	  flash[:success] = 'Question was successfully destroyed.'
      format.html { redirect_to topic_questions_path(@topic) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:text)
    end
end

