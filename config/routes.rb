Rails.application.routes.draw do
  root 'html_pages#home'
  get 'about', to: 'html_pages#about'
  get 'contact', to: 'html_pages#contact'
  get 'help', to: 'html_pages#help'
  get 'signup', to: 'users#new'
end
