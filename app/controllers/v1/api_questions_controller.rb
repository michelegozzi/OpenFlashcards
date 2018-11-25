module V1
  class ApiQuestionsController < V1::BaseApiController
    
    before_action :find_question, only: [:show, :update]

    before_action only: :create do
      unless @json.has_key?('question') && @json['question'].responds_to?(:[]) && @json['question']['name']
        render nothing: true, status: :bad_request
      end
    end

    before_action only: :update do
      unless @json.has_key?('question')
        render nothing: true, status: :bad_request
      end
    end

    before_action only: :create do
      @question = Question.find_by_text(@json['question']['text'])
    end

    def index
      #render json: Question.where('owner_id = ?', @user.id)
      @question = Question.all
      logger.info "rendering json"
      render json: @question
    end

    def show
      render json: @question
    end

    def create
      if @question.present?
        render nothing: true, status: :conflict
      else
        @question = Question.new
        @question.assign_attributes(@json['question'])
        if @question.save
          render json: @question
        else
           render nothing: true, status: :bad_request
        end
      end
    end

    def update
      @question.assign_attributes(@json['question'])
      if @question.save
        render json: @question
      else
        render nothing: true, status: :bad_request
      end
    end

    private
      def find_question
        @question = Question.find_by_text(params[:text])
        #render nothing: true, status: :not_found unless @question.present? && @question.user == @user
        render nothing: true, status: :not_found unless @question.present?
      end
  end
end