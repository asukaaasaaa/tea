Rails.application.routes.draw do
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

 scope module: :public do
  root to: 'homes#top'
  get '/about', to: 'homes#about'

  resources :post_teas, only:[:index, :new, :create, :show, :edit, :update, :destroy]
 end

 namespace :admin do
  root to: 'homes#top'
  resources :genres, only: [:index, :create, :edit, :update]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
