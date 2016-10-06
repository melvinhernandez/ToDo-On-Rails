Rails.application.routes.draw do
  resources :todo_groups do
    resources :todo_tasks do
      member do
        patch :complete
      end
    end
  end
  
  root "todo_groups#index"
end
