Rails.application.routes.draw do
  resources :companies do 
    collection { post :import }
  end

  devise_for :users
  get 'welcome/features'

  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/pricing'

  get 'welcome/login'

  resources :invoices

  root to: "welcome#index"

end
