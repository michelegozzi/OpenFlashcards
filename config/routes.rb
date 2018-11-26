Rails.application.routes.draw do
  
  
  get 'home', to: 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'contact', to: 'static_pages#contact'
  root 'static_pages#home'
  
  

    
  get 'answers/index'
  get 'answers/show'
  get 'answers/new'
  get 'answers/edit'
  get 'answers/create'
  get 'answers/update'
  get 'answers/destroy'
  resources :topics do
	resources :questions do
      collection do
        get 'test'
	  end
    end
  end
  resources :questions do
	resources :answers
  end
  
  resources :users do #, only: [:show, :new, :edit, :update] do
	resources :api_keys
  end
  resources :sessions, only: [:new, :create, :destroy]
  
  get '/signup', to: 'users#new'
  get '/signin',  to: 'sessions#new'
  post '/signin',  to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  scope '/api' do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      #scope '/:idtype' do
        
        scope '/topics' do
          get '/' => 'api_topics#index'
          post '/' => 'api_topics#create'
          scope '/:id' do
            get '/' => 'api_topics#show'
            put '/' => 'api_topics#update', :as => "update_topic"
            scope '/questions' do
              get '/' => 'api_questions#index'
              post '/' => 'api_questions#create'
              #scope '/:qid' do
              #  get '/' => 'api_questions#show'
              #  put '/' => 'api_questions#update'
              #end
            end
          end
        end
        
        scope '/questions' do
          scope '/:id' do
            get '/' => 'api_questions#show'
            put '/' => 'api_questions#update'
            scope '/answers' do
              get '/' => 'api_answers#index'
              post '/' => 'api_answers#create'
            end
          end
        end
        
        scope '/answers' do
          get '/' => 'api_answers#index'
          post '/' => 'api_answers#create'
          scope '/:id' do
            get '/' => 'api_answers#show'
            put '/' => 'api_answers#update'
          end
        end
        
        scope '/identities' do
          post '/' => 'api_identities#create'
        end
        
        scope '/users' do
          get '/' => 'api_users#index'
          #post '/' => 'api_topics#create'
          scope '/:id' do
            get '/' => 'api_users#show'
            #put '/' => 'api_users#update'
          end
        end
      #end
    end
  end
end
