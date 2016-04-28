Rails.application.routes.draw do
  root 'cities#index'

  get "/update/" => "updates#update_cities"

  resource :cities

  post "/cities/city_search" => "cities#city_search"
  get "/cities/city_search" => "cities#city_search"
end

#             Prefix Verb   URI Pattern                   Controller#Action
#               root GET    /                             cities#index
#             update GET    /update(.:format)             updates#update_cities
#             cities POST   /cities(.:format)             cities#create
#         new_cities GET    /cities/new(.:format)         cities#new
#        edit_cities GET    /cities/edit(.:format)        cities#edit
#                    GET    /cities(.:format)             cities#show
#                    PATCH  /cities(.:format)             cities#update
#                    PUT    /cities(.:format)             cities#update
#                    DELETE /cities(.:format)             cities#destroy
# cities_city_search POST   /cities/city_search(.:format) cities#city_search
#                    GET    /cities/city_search(.:format) cities#city_search