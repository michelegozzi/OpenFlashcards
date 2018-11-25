module V1
  class ApiIdentitiesController < V1::BaseApiController
  
    def create
      
        if @api_key.present?
          render json: @api_key
        else
           render nothing: true, status: :bad_request
        end
      
    end
  
  end
end
