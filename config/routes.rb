Rails.application.routes.draw do
  root 'home#index'
  devise_for :students , controllers: { sessions: 'students/sessions', registrations: 'students/registrations' }
  resources :students, only: :show do
    resources :profiles, only: [:new, :create, :edit, :update]
    resources :careers do
      resources :years do
        resources :subjects do
          resources :states
        end
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
