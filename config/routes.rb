Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/cabinet', as: 'rails_admin'
  devise_for :users
  root to: redirect('/cabinet')

  #core
  resources :patients, only: :show
end
