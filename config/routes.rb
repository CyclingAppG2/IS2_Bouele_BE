
Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth_user'

  mount_devise_token_auth_for 'Admin', at: 'auth_admin'
  as :admin do
    # Define routes for Admin within this block.
  end

  match 'organization/new_event' => 'organizations#createEvent', via: :post
  match 'organization/change_event_name' => 'organizations#changeEventName', via: :patch
  match 'organization/cancel_event' => 'organizations#cancelEvent', via: :delete

  match 'voluntary/join_event' => 'voluntaries#joinEvent', via: :post

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
  resources :user_polymorphisms
  get 'home/index'
  resources :forum_posts
  resources :forum_threads
  resources :user_polymorphisms
  resources :subforums

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
