Rails.application.routes.draw do
  #get '/', controller: 'home' , action: 'index'
  # root "posts#index"
  root 'home#index'

  resources :vehicles, only: %i[index new create show edit update destroy] 
  #get '/', controller: 'vehicles' , action: 'index'
end

#ActiveRecord Abstrai o banco de dados para deixar mais seguro.

#Gera arquivo de migração do banco de dados. (rails generate model Post title:string body:text)

