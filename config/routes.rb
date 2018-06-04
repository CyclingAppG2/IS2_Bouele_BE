# == Route Map
#
#                    Prefix Verb     URI Pattern                                Controller#Action
#                    boards GET      /boards(.:format)                          boards#index
#                           POST     /boards(.:format)                          boards#create
#                     board GET      /boards/:id(.:format)                      boards#show
#                           PATCH    /boards/:id(.:format)                      boards#update
#                           PUT      /boards/:id(.:format)                      boards#update
#                           DELETE   /boards/:id(.:format)                      boards#destroy
#                      tags GET      /tags(.:format)                            tags#index
#                           POST     /tags(.:format)                            tags#create
#                       tag GET      /tags/:id(.:format)                        tags#show
#                           PATCH    /tags/:id(.:format)                        tags#update
#                           PUT      /tags/:id(.:format)                        tags#update
#                           DELETE   /tags/:id(.:format)                        tags#destroy
#          events_my_events GET      /events/my_events(.:format)                events#my_events
#          events_available GET      /events/available(.:format)                events#events_available
#                           GET      /voluntaries_in_event/:id(.:format)        events#voluntaries_in_event
#     voluntary_leave_event DELETE   /voluntary/leave_event(.:format)           event_voluntaries#leave_event
#                           GET      /organizations/statistics/:id(.:format)    organizations#statistics
#                           PUT      /event/scores/:id(.:format)                event_voluntaries#update_scores
#            events_filters PUT      /events/filters(.:format)                  events#events_by_filters
#                    gender GET      /genders/:id(.:format)                     genders#show
# theme_interests_voluntary GET      /theme_interests_voluntaries/:id(.:format) theme_interests_voluntaries#show
#                    forums GET      /forums(.:format)                          forum_threads#index_by
#      forums_size_paginate GET      /forums/size_paginate(.:format)            forum_threads#index
#                           PATCH    /forums/points/:id(.:format)               forum_threads#update_points
#              contact_data GET      /contact_data(.:format)                    contact_data#index
#                           POST     /contact_data(.:format)                    contact_data#create
#             contact_datum GET      /contact_data/:id(.:format)                contact_data#show
#                           PATCH    /contact_data/:id(.:format)                contact_data#update
#                           PUT      /contact_data/:id(.:format)                contact_data#update
#                           DELETE   /contact_data/:id(.:format)                contact_data#destroy
#              type_contact GET      /type_contacts/:id(.:format)               type_contacts#show
#          new_user_session GET      /auth_user/sign_in(.:format)               devise_token_auth/sessions#new
#              user_session POST     /auth_user/sign_in(.:format)               devise_token_auth/sessions#create
#      destroy_user_session DELETE   /auth_user/sign_out(.:format)              devise_token_auth/sessions#destroy
#         new_user_password GET      /auth_user/password/new(.:format)          devise_token_auth/passwords#new
#        edit_user_password GET      /auth_user/password/edit(.:format)         devise_token_auth/passwords#edit
#             user_password PATCH    /auth_user/password(.:format)              devise_token_auth/passwords#update
#                           PUT      /auth_user/password(.:format)              devise_token_auth/passwords#update
#                           POST     /auth_user/password(.:format)              devise_token_auth/passwords#create
#  cancel_user_registration GET      /auth_user/cancel(.:format)                devise_token_auth/registrations#cancel
#     new_user_registration GET      /auth_user/sign_up(.:format)               devise_token_auth/registrations#new
#    edit_user_registration GET      /auth_user/edit(.:format)                  devise_token_auth/registrations#edit
#         user_registration PATCH    /auth_user(.:format)                       devise_token_auth/registrations#update
#                           PUT      /auth_user(.:format)                       devise_token_auth/registrations#update
#                           DELETE   /auth_user(.:format)                       devise_token_auth/registrations#destroy
#                           POST     /auth_user(.:format)                       devise_token_auth/registrations#create
#  auth_user_validate_token GET      /auth_user/validate_token(.:format)        devise_token_auth/token_validations#validate_token
#         auth_user_failure GET      /auth_user/failure(.:format)               devise_token_auth/omniauth_callbacks#omniauth_failure
#                           GET      /auth_user/:provider/callback(.:format)    devise_token_auth/omniauth_callbacks#omniauth_success
#                           GET|POST /omniauth/:provider/callback(.:format)     devise_token_auth/omniauth_callbacks#redirect_callbacks
#          omniauth_failure GET|POST /omniauth/failure(.:format)                devise_token_auth/omniauth_callbacks#omniauth_failure
#                           GET      /auth_user/:provider(.:format)             redirect(301)
#         new_admin_session GET      /auth_admin/sign_in(.:format)              users/sessions#new
#             admin_session POST     /auth_admin/sign_in(.:format)              users/sessions#create
#     destroy_admin_session DELETE   /auth_admin/sign_out(.:format)             users/sessions#destroy
#        new_admin_password GET      /auth_admin/password/new(.:format)         devise_token_auth/passwords#new
#       edit_admin_password GET      /auth_admin/password/edit(.:format)        devise_token_auth/passwords#edit
#            admin_password PATCH    /auth_admin/password(.:format)             devise_token_auth/passwords#update
#                           PUT      /auth_admin/password(.:format)             devise_token_auth/passwords#update
#                           POST     /auth_admin/password(.:format)             devise_token_auth/passwords#create
# cancel_admin_registration GET      /auth_admin/cancel(.:format)               devise_token_auth/registrations#cancel
#    new_admin_registration GET      /auth_admin/sign_up(.:format)              devise_token_auth/registrations#new
#   edit_admin_registration GET      /auth_admin/edit(.:format)                 devise_token_auth/registrations#edit
#        admin_registration PATCH    /auth_admin(.:format)                      devise_token_auth/registrations#update
#                           PUT      /auth_admin(.:format)                      devise_token_auth/registrations#update
#                           DELETE   /auth_admin(.:format)                      devise_token_auth/registrations#destroy
#                           POST     /auth_admin(.:format)                      devise_token_auth/registrations#create
# auth_admin_validate_token GET      /auth_admin/validate_token(.:format)       devise_token_auth/token_validations#validate_token
#        auth_admin_failure GET      /auth_admin/failure(.:format)              devise_token_auth/omniauth_callbacks#omniauth_failure
#                           GET      /auth_admin/:provider/callback(.:format)   devise_token_auth/omniauth_callbacks#omniauth_success
#                           GET|POST /omniauth/:provider/callback(.:format)     devise_token_auth/omniauth_callbacks#redirect_callbacks
#                           GET|POST /omniauth/failure(.:format)                devise_token_auth/omniauth_callbacks#omniauth_failure
#                           GET      /auth_admin/:provider(.:format)            redirect(301)
#                           GET      /bans/showBansUser/:id(.:format)           bans#showBansUser
#   user_get_used_usernames GET      /user/get_used_usernames(.:format)         users#getUsedUsernamesAsPDF
#               attachments GET      /attachments(.:format)                     attachments#index
#                           POST     /attachments(.:format)                     attachments#create
#                attachment GET      /attachments/:id(.:format)                 attachments#show
#                           PATCH    /attachments/:id(.:format)                 attachments#update
#                           PUT      /attachments/:id(.:format)                 attachments#update
#                           DELETE   /attachments/:id(.:format)                 attachments#destroy
#                 locations GET      /locations(.:format)                       locations#index
#                           POST     /locations(.:format)                       locations#create
#                  location GET      /locations/:id(.:format)                   locations#show
#                           PATCH    /locations/:id(.:format)                   locations#update
#                           PUT      /locations/:id(.:format)                   locations#update
#                           DELETE   /locations/:id(.:format)                   locations#destroy
#         event_voluntaries GET      /event_voluntaries(.:format)               event_voluntaries#index
#                           POST     /event_voluntaries(.:format)               event_voluntaries#create
#           event_voluntary GET      /event_voluntaries/:id(.:format)           event_voluntaries#show
#                           PATCH    /event_voluntaries/:id(.:format)           event_voluntaries#update
#                           PUT      /event_voluntaries/:id(.:format)           event_voluntaries#update
#                           DELETE   /event_voluntaries/:id(.:format)           event_voluntaries#destroy
#                      plus GET      /plus(.:format)                            plus#index
#                           POST     /plus(.:format)                            plus#create
#                       plu GET      /plus/:id(.:format)                        plus#show
#                           PATCH    /plus/:id(.:format)                        plus#update
#                           PUT      /plus/:id(.:format)                        plus#update
#                           DELETE   /plus/:id(.:format)                        plus#destroy
#                      bans GET      /bans(.:format)                            bans#index
#                           POST     /bans(.:format)                            bans#create
#                       ban GET      /bans/:id(.:format)                        bans#show
#                           PATCH    /bans/:id(.:format)                        bans#update
#                           PUT      /bans/:id(.:format)                        bans#update
#                           DELETE   /bans/:id(.:format)                        bans#destroy
#                department GET      /departments/:id(.:format)                 departments#show
#              minicipality GET      /minicipalities/:id(.:format)              minicipalities#show
#     organization_category GET      /organization_categories/:id(.:format)     organization_categories#show
#            theme_interest GET      /theme_interests/:id(.:format)             theme_interests#show
#              theme_intere GET      /theme_interes/:id(.:format)               theme_interes#show
#             organizations GET      /organizations(.:format)                   organizations#index
#                           POST     /organizations(.:format)                   organizations#create
#              organization GET      /organizations/:id(.:format)               organizations#show
#                           PATCH    /organizations/:id(.:format)               organizations#update
#                           PUT      /organizations/:id(.:format)               organizations#update
#                           DELETE   /organizations/:id(.:format)               organizations#destroy
#                   reasons GET      /reasons(.:format)                         reasons#index
#                           POST     /reasons(.:format)                         reasons#create
#                    reason GET      /reasons/:id(.:format)                     reasons#show
#                           PATCH    /reasons/:id(.:format)                     reasons#update
#                           PUT      /reasons/:id(.:format)                     reasons#update
#                           DELETE   /reasons/:id(.:format)                     reasons#destroy
#                    events GET      /events(.:format)                          events#index
#                           POST     /events(.:format)                          events#create
#                     event GET      /events/:id(.:format)                      events#show
#                           PATCH    /events/:id(.:format)                      events#update
#                           PUT      /events/:id(.:format)                      events#update
#                           DELETE   /events/:id(.:format)                      events#destroy
#               voluntaries GET      /voluntaries(.:format)                     voluntaries#index
#                           POST     /voluntaries(.:format)                     voluntaries#create
#                 voluntary GET      /voluntaries/:id(.:format)                 voluntaries#show
#                           PATCH    /voluntaries/:id(.:format)                 voluntaries#update
#                           PUT      /voluntaries/:id(.:format)                 voluntaries#update
#                           DELETE   /voluntaries/:id(.:format)                 voluntaries#destroy
#        user_polymorphisms GET      /user_polymorphisms(.:format)              user_polymorphisms#index
#                           POST     /user_polymorphisms(.:format)              user_polymorphisms#create
#         user_polymorphism GET      /user_polymorphisms/:id(.:format)          user_polymorphisms#show
#                           PATCH    /user_polymorphisms/:id(.:format)          user_polymorphisms#update
#                           PUT      /user_polymorphisms/:id(.:format)          user_polymorphisms#update
#                           DELETE   /user_polymorphisms/:id(.:format)          user_polymorphisms#destroy
#                home_index GET      /home/index(.:format)                      home#index
#               forum_posts GET      /forum_posts(.:format)                     forum_posts#index
#                           POST     /forum_posts(.:format)                     forum_posts#create
#                forum_post GET      /forum_posts/:id(.:format)                 forum_posts#show
#                           PATCH    /forum_posts/:id(.:format)                 forum_posts#update
#                           PUT      /forum_posts/:id(.:format)                 forum_posts#update
#                           DELETE   /forum_posts/:id(.:format)                 forum_posts#destroy
#             forum_threads GET      /forum_threads(.:format)                   forum_threads#index
#                           POST     /forum_threads(.:format)                   forum_threads#create
#              forum_thread GET      /forum_threads/:id(.:format)               forum_threads#show
#                           PATCH    /forum_threads/:id(.:format)               forum_threads#update
#                           PUT      /forum_threads/:id(.:format)               forum_threads#update
#                           DELETE   /forum_threads/:id(.:format)               forum_threads#destroy
#                 subforums GET      /subforums(.:format)                       subforums#index
#                           POST     /subforums(.:format)                       subforums#create
#                  subforum GET      /subforums/:id(.:format)                   subforums#show
#                           PATCH    /subforums/:id(.:format)                   subforums#update
#                           PUT      /subforums/:id(.:format)                   subforums#update
#                           DELETE   /subforums/:id(.:format)                   subforums#destroy
#                  userType GET      /userType(.:format)                        user_polymorphisms#getTypeUser
#                      root GET      /                                          home#index

Rails.application.routes.draw do
  resources :boards
  resources :tags
  get 'events/my_events' => "events#my_events"
  get 'events/available' => 'events#events_available'
  get 'voluntaries_in_event/:id' => 'events#voluntaries_in_event'
  delete 'voluntary/leave_event' => 'event_voluntaries#leave_event'
  get 'organizations/statistics/:id' => 'organizations#statistics'
  put 'event/scores/:id' => 'event_voluntaries#update_scores'
  put 'events/filters' => 'events#events_by_filters'
  resources :genders,  only: [:show]
  resources :theme_interests_voluntaries,  only: [:show]
  #get 'devise_token_auth_override/session'

  get 'forums' => 'forum_threads#index_by'
  get 'forums/size_paginate' => 'forum_threads#index'
  patch 'forums/points/:id' => 'forum_threads#update_points'
  get 'forum_post/forum/:id' => 'forum_posts#show_by_forum_thread'
  get 'events/certificate/:event' => 'event_voluntaries#attendanceCertificate'

  require "devise_token_auth"
  resources :contact_data
  resources :type_contacts, only: [:show]
  mount_devise_token_auth_for 'User', at: 'auth_user' #, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }


  mount_devise_token_auth_for 'Admin', at: 'auth_admin', controllers: { sessions: "users/sessions"}

  # as :admin do
  #   # Define routes for Admin within this block.
  # end
  # as :admin do
  
  # end
  get 'bans/showBansUser/:id' => 'bans#showBansUser'

  match 'user/get_used_usernames' => 'users#getUsedUsernamesAsPDF', via: :get

  resources :attachments
  resources :locations
  resources :event_voluntaries
  resources :plus
  resources :bans
  resources :departments, only: [:show]
  resources :minicipalities, only: [:show]
  resources :organization_categories, only: [:show]
  resources :theme_interests, only: [:show]
  resources :theme_interes, only: [:show]
  resources :organizations
  resources :reasons
  resources :events
  resources :voluntaries
  resources :user_polymorphisms
  get 'home/index'
  resources :forum_posts
  resources :forum_threads
  resources :subforums
  get 'userType' => "user_polymorphisms#getTypeUser"


 
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
