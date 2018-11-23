Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :truck_info
    end
  end
end
