module V1
  class ApiTopicsController < V1::BaseApiController

    before_action :find_topic, only: [:show, :update]

    before_action only: :create do
      unless @json.has_key?('topic') && @json['topic']['name'].present? #@json['topic'].responds_to?(:[]) 
        render nothing: true, status: :bad_request
      end
    end

    before_action only: :update do
      unless @json.has_key?('topic')
        render nothing: true, status: :bad_request
      end
    end

    before_action only: :create do
      @topic = Topic.where(:name => @json['topic']['name']).first rescue nil
    end

    def index
      #render json: Topic.where('owner_id = ?', @user.id)
      @topics = Topic.all
      
      #@topics = Topic.where(nil)
      filtering_params(params).each do |key, value|
        @topics = @topics.public_send(key, value) if value.present?
      end
      
      logger.info "rendering json"
      #render json: @topics, :root => 'topics' #, serializer: TopicSerializer, root: 'topics'
      #render json: {:topics => @topics}, :root => 'topic', each_serializer: SimpleTopicSerializer
      render json: @topics, :root => 'topic', each_serializer: SimpleTopicSerializer
      
      #render json: {topics: TopicsSerializer.new(@topics)}
      
    end

    def show
      render json: @topic
    end

    def create
      if @topic.present?
        render nothing: true, status: :conflict
      else
        @topic = Topic.new
        @topic.assign_attributes(@json['topic'])
        if @topic.save
          render json: @topic
        else
           render nothing: true, status: :bad_request
        end
      end
    end

    def update
      @topic.assign_attributes(@json['topic'])
      if @topic.save
          render json: @topic
      else
          render nothing: true, status: :bad_request
      end
    end

    private
      def find_topic
        @topic = Topic.where(:id => params[:id]).first rescue nil
        #render nothing: true, status: :not_found unless @topic.present? && @topic.user == @user
        render nothing: true, status: :not_found unless @topic.present?
      end
     
      # A list of the param names that can be used for filtering the Product list
      def filtering_params(params)
        params.slice(:starts_with, :ends_with, :contains)
      end
  end
end