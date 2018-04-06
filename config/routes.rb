# == Route Map
#
#                  Prefix Verb   URI Pattern                            Controller#Action
#             attachments GET    /attachments(.:format)                 attachments#index
#                         POST   /attachments(.:format)                 attachments#create
#              attachment GET    /attachments/:id(.:format)             attachments#show
#                         PATCH  /attachments/:id(.:format)             attachments#update
#                         PUT    /attachments/:id(.:format)             attachments#update
#                         DELETE /attachments/:id(.:format)             attachments#destroy
#                contacts GET    /contacts(.:format)                    contacts#index
#                         POST   /contacts(.:format)                    contacts#create
#                 contact GET    /contacts/:id(.:format)                contacts#show
#                         PATCH  /contacts/:id(.:format)                contacts#update
#                         PUT    /contacts/:id(.:format)                contacts#update
#                         DELETE /contacts/:id(.:format)                contacts#destroy
#               locations GET    /locations(.:format)                   locations#index
#                         POST   /locations(.:format)                   locations#create
#                location GET    /locations/:id(.:format)               locations#show
#                         PATCH  /locations/:id(.:format)               locations#update
#                         PUT    /locations/:id(.:format)               locations#update
#                         DELETE /locations/:id(.:format)               locations#destroy
#       event_voluntaries GET    /event_voluntaries(.:format)           event_voluntaries#index
#                         POST   /event_voluntaries(.:format)           event_voluntaries#create
#         event_voluntary GET    /event_voluntaries/:id(.:format)       event_voluntaries#show
#                         PATCH  /event_voluntaries/:id(.:format)       event_voluntaries#update
#                         PUT    /event_voluntaries/:id(.:format)       event_voluntaries#update
#                         DELETE /event_voluntaries/:id(.:format)       event_voluntaries#destroy
#                    plus GET    /plus(.:format)                        plus#index
#                         POST   /plus(.:format)                        plus#create
#                     plu GET    /plus/:id(.:format)                    plus#show
#                         PATCH  /plus/:id(.:format)                    plus#update
#                         PUT    /plus/:id(.:format)                    plus#update
#                         DELETE /plus/:id(.:format)                    plus#destroy
#                  events GET    /events(.:format)                      events#index
#                         POST   /events(.:format)                      events#create
#                   event GET    /events/:id(.:format)                  events#show
#                         PATCH  /events/:id(.:format)                  events#update
#                         PUT    /events/:id(.:format)                  events#update
#                         DELETE /events/:id(.:format)                  events#destroy
#             departments GET    /departments(.:format)                 departments#index
#                         POST   /departments(.:format)                 departments#create
#              department GET    /departments/:id(.:format)             departments#show
#                         PATCH  /departments/:id(.:format)             departments#update
#                         PUT    /departments/:id(.:format)             departments#update
#                         DELETE /departments/:id(.:format)             departments#destroy
#          minicipalities GET    /minicipalities(.:format)              minicipalities#index
#                         POST   /minicipalities(.:format)              minicipalities#create
#            minicipality GET    /minicipalities/:id(.:format)          minicipalities#show
#                         PATCH  /minicipalities/:id(.:format)          minicipalities#update
#                         PUT    /minicipalities/:id(.:format)          minicipalities#update
#                         DELETE /minicipalities/:id(.:format)          minicipalities#destroy
# organization_categories GET    /organization_categories(.:format)     organization_categories#index
#                         POST   /organization_categories(.:format)     organization_categories#create
#   organization_category GET    /organization_categories/:id(.:format) organization_categories#show
#                         PATCH  /organization_categories/:id(.:format) organization_categories#update
#                         PUT    /organization_categories/:id(.:format) organization_categories#update
#                         DELETE /organization_categories/:id(.:format) organization_categories#destroy
#         theme_interests GET    /theme_interests(.:format)             theme_interests#index
#                         POST   /theme_interests(.:format)             theme_interests#create
#          theme_interest GET    /theme_interests/:id(.:format)         theme_interests#show
#                         PATCH  /theme_interests/:id(.:format)         theme_interests#update
#                         PUT    /theme_interests/:id(.:format)         theme_interests#update
#                         DELETE /theme_interests/:id(.:format)         theme_interests#destroy
#           theme_interes GET    /theme_interes(.:format)               theme_interes#index
#                         POST   /theme_interes(.:format)               theme_interes#create
#            theme_intere GET    /theme_interes/:id(.:format)           theme_interes#show
#                         PATCH  /theme_interes/:id(.:format)           theme_interes#update
#                         PUT    /theme_interes/:id(.:format)           theme_interes#update
#                         DELETE /theme_interes/:id(.:format)           theme_interes#destroy
#           organizations GET    /organizations(.:format)               organizations#index
#                         POST   /organizations(.:format)               organizations#create
#            organization GET    /organizations/:id(.:format)           organizations#show
#                         PATCH  /organizations/:id(.:format)           organizations#update
#                         PUT    /organizations/:id(.:format)           organizations#update
#                         DELETE /organizations/:id(.:format)           organizations#destroy
#                 reasons GET    /reasons(.:format)                     reasons#index
#                         POST   /reasons(.:format)                     reasons#create
#                  reason GET    /reasons/:id(.:format)                 reasons#show
#                         PATCH  /reasons/:id(.:format)                 reasons#update
#                         PUT    /reasons/:id(.:format)                 reasons#update
#                         DELETE /reasons/:id(.:format)                 reasons#destroy
#                    bans GET    /bans(.:format)                        bans#index
#                         POST   /bans(.:format)                        bans#create
#                     ban GET    /bans/:id(.:format)                    bans#show
#                         PATCH  /bans/:id(.:format)                    bans#update
#                         PUT    /bans/:id(.:format)                    bans#update
#                         DELETE /bans/:id(.:format)                    bans#destroy
#             voluntaries GET    /voluntaries(.:format)                 voluntaries#index
#                         POST   /voluntaries(.:format)                 voluntaries#create
#               voluntary GET    /voluntaries/:id(.:format)             voluntaries#show
#                         PATCH  /voluntaries/:id(.:format)             voluntaries#update
#                         PUT    /voluntaries/:id(.:format)             voluntaries#update
#                         DELETE /voluntaries/:id(.:format)             voluntaries#destroy
#                   users GET    /users(.:format)                       users#index
#                         POST   /users(.:format)                       users#create
#                    user GET    /users/:id(.:format)                   users#show
#                         PATCH  /users/:id(.:format)                   users#update
#                         PUT    /users/:id(.:format)                   users#update
#                         DELETE /users/:id(.:format)                   users#destroy
#                  admins GET    /admins(.:format)                      admins#index
#                         POST   /admins(.:format)                      admins#create
#                   admin GET    /admins/:id(.:format)                  admins#show
#                         PATCH  /admins/:id(.:format)                  admins#update
#                         PUT    /admins/:id(.:format)                  admins#update
#                         DELETE /admins/:id(.:format)                  admins#destroy
#             forum_posts GET    /forum_posts(.:format)                 forum_posts#index
#                         POST   /forum_posts(.:format)                 forum_posts#create
#              forum_post GET    /forum_posts/:id(.:format)             forum_posts#show
#                         PATCH  /forum_posts/:id(.:format)             forum_posts#update
#                         PUT    /forum_posts/:id(.:format)             forum_posts#update
#                         DELETE /forum_posts/:id(.:format)             forum_posts#destroy
#           forum_threads GET    /forum_threads(.:format)               forum_threads#index
#                         POST   /forum_threads(.:format)               forum_threads#create
#            forum_thread GET    /forum_threads/:id(.:format)           forum_threads#show
#                         PATCH  /forum_threads/:id(.:format)           forum_threads#update
#                         PUT    /forum_threads/:id(.:format)           forum_threads#update
#                         DELETE /forum_threads/:id(.:format)           forum_threads#destroy
#               subforums GET    /subforums(.:format)                   subforums#index
#                         POST   /subforums(.:format)                   subforums#create
#                subforum GET    /subforums/:id(.:format)               subforums#show
#                         PATCH  /subforums/:id(.:format)               subforums#update
#                         PUT    /subforums/:id(.:format)               subforums#update
#                         DELETE /subforums/:id(.:format)               subforums#destroy
# 

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get 'home/index'

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
  resources :users
  resources :admins
  resources :forum_posts
  resources :forum_threads
  resources :user_polymorphisms
  resources :subforums

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
