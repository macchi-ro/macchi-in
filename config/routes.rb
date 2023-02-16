Rails.application.routes.draw do

  # 会員側のルーティング設定
scope module: :public do
  root to: "homes#top"
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  get 'reservations/complete' => 'reservations#complete'
  resources :plans, only: [:show, :index] do
    resource :favorites, only: [:create, :destroy]
    resources :reservations, only: [:new, :create]
    post 'reservations/check' => 'reservations#check'
     collection do
      get 'search'
     end
  end
  resources :reservations, only: [:index]
  patch '/customers/withdrawal' => 'customers#withdrawal', as: 'withdrawal'
  resource :customers, only: [:edit, :update, :show] do
      member do
      get :favorites
      end
  end
  resources :comments, only: [:create, :index]
end

  # 管理者側のルーティング設定
  namespace :admin do
    resources :plans, only: [:index, :new, :create, :show, :edit, :update]
    resources :rooms, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update] do
      collection do
       get 'search'
      end
    end
    resources :reservations, only: [:show, :index, :edit, :update, :destroy] do
      collection do
       get 'search'
      end
    end
    resources :comments, only: [:index, :edit, :update, :destroy]
  end

# 顧客用
# URL /customers/sign_in ...
devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
end
