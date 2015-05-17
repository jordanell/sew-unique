Rails.application.routes.draw do
  root :to => "root#index"

  post '/contact_form', to: 'contact_form#create'
end
