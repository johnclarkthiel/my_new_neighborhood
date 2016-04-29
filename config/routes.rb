Rails.application.routes.draw do
  devise_for :users
  root 'cities#index'

  get "/update/" => "updates#update_cities"

  resource :cities

  post "/cities/city_search" => "cities#city_search"
  get "/cities/city_search" => "cities#city_search"
end

#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              cities#index
#                   update GET    /update(.:format)              updates#update_cities
#                   cities POST   /cities(.:format)              cities#create
#               new_cities GET    /cities/new(.:format)          cities#new
#              edit_cities GET    /cities/edit(.:format)         cities#edit
#                          GET    /cities(.:format)              cities#show
#                          PATCH  /cities(.:format)              cities#update
#                          PUT    /cities(.:format)              cities#update
#                          DELETE /cities(.:format)              cities#destroy
#       cities_city_search POST   /cities/city_search(.:format)  cities#city_search
#                          GET    /cities/city_search(.:format)  cities#city_search