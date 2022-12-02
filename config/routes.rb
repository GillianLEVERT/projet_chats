Rails.application.routes.draw do
  resources :join_table_user_to_carts
  resources :carts, path: 'mon_panier'
  root "items#index"
  devise_for :users

  resources :items

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

end
