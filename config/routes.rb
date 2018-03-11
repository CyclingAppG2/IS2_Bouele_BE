Rails.application.routes.draw do
  resources :attachments
  resources :contacts
  resources :locations
  resources :event_voluntaries
  resources :plus
  resources :events
  resources :departments
  resources :minicipalities
  resources :organization_categories
  resources :theme_interests
  resources :theme_interes
  resources :organizations
  resources :reasons
  resources :bans
  resources :voluntaries
  resources :users
  resources :admins
  resources :forum_posts
  resources :forum_threads
  resources :subforums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
