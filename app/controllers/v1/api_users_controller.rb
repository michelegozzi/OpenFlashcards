module V1
  class ApiUsersController < V1::BaseApiController

    before_action :find_user, only: [:show, :update]

    def index
      #render json: Topic.where('owner_id = ?', @user.id)
      @users = User.all
      logger.info "rendering users json"
      render json: @users , :root => 'users'
    end

    def show
      render json: @user
    end
    
    private
      def find_user
        @user = User.where(:id => params[:id]).first rescue nil
        logger.info "Welcome #{@user.name}!" if @user
        render nothing: true, status: :not_found unless @user.present?
      end
  end
end