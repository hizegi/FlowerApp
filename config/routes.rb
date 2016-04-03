Rails.application.routes.draw do
  devise_for :users

  resources :users
  resources :flowers

  resources :users do
    resources :flowers
  end

  root 'users#index'

end

#         new_user_session GET    /users/sign_in(.:format)                   devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                   devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                  devise/sessions#destroy
#            user_password POST   /users/password(.:format)                  devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)              devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)             devise/passwords#edit
#                          PATCH  /users/password(.:format)                  devise/passwords#update
#                          PUT    /users/password(.:format)                  devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                    devise/registrations#cancel
#        user_registration POST   /users(.:format)                           devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                   devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                      devise/registrations#edit
#                          PATCH  /users(.:format)                           devise/registrations#update
#                          PUT    /users(.:format)                           devise/registrations#update
#                          DELETE /users(.:format)                           devise/registrations#destroy
#             user_flowers GET    /users/:user_id/flowers(.:format)          flowers#index
#                          POST   /users/:user_id/flowers(.:format)          flowers#create
#          new_user_flower GET    /users/:user_id/flowers/new(.:format)      flowers#new
#         edit_user_flower GET    /users/:user_id/flowers/:id/edit(.:format) flowers#edit
#              user_flower GET    /users/:user_id/flowers/:id(.:format)      flowers#show
#                          PATCH  /users/:user_id/flowers/:id(.:format)      flowers#update
#                          PUT    /users/:user_id/flowers/:id(.:format)      flowers#update
#                          DELETE /users/:user_id/flowers/:id(.:format)      flowers#destroy
#                    users GET    /users(.:format)                           users#index
#                          POST   /users(.:format)                           users#create
#                 new_user GET    /users/new(.:format)                       users#new
#                edit_user GET    /users/:id/edit(.:format)                  users#edit
#                     user GET    /users/:id(.:format)                       users#show
#                          PATCH  /users/:id(.:format)                       users#update
#                          PUT    /users/:id(.:format)                       users#update
#                          DELETE /users/:id(.:format)                       users#destroy
#                     root GET    /                                          users#index