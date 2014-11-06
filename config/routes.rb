Rails.application.routes.draw do
  
#request type  route  -> controler#method  
# app.get('route. function ..)')

get('/planes' => 'planes#index')
get '/planes/new' => 'planes#new'
post '/planes/new' => 'planes#create'
get 'planes/:id' => 'planes#show'

end
