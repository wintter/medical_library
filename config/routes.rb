Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/cabinet', as: 'rails_admin'
  devise_for :users

  # namespace :api do
  #   namespace :v1, defaults: { format: 'json' } do
  #     mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks, :confirmations]
  #   end
  # end

  root to: redirect('/cabinet')
end
