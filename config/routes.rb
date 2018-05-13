# == Route Map
#
#                             Prefix Verb     URI Pattern                                     Controller#Action
#                            genders GET      /genders(.:format)                              genders#index
#                                    POST     /genders(.:format)                              genders#create
#                             gender GET      /genders/:id(.:format)                          genders#show
#                                    PATCH    /genders/:id(.:format)                          genders#update
#                                    PUT      /genders/:id(.:format)                          genders#update
#                                    DELETE   /genders/:id(.:format)                          genders#destroy
#        theme_interests_voluntaries GET      /theme_interests_voluntaries(.:format)          theme_interests_voluntaries#index
#                                    POST     /theme_interests_voluntaries(.:format)          theme_interests_voluntaries#create
#          theme_interests_voluntary GET      /theme_interests_voluntaries/:id(.:format)      theme_interests_voluntaries#show
#                                    PATCH    /theme_interests_voluntaries/:id(.:format)      theme_interests_voluntaries#update
#                                    PUT      /theme_interests_voluntaries/:id(.:format)      theme_interests_voluntaries#update
#                                    DELETE   /theme_interests_voluntaries/:id(.:format)      theme_interests_voluntaries#destroy
# devise_token_auth_override_session GET      /devise_token_auth_override/session(.:format)   devise_token_auth_override#session
#                       contact_data GET      /contact_data(.:format)                         contact_data#index
#                                    POST     /contact_data(.:format)                         contact_data#create
#                      contact_datum GET      /contact_data/:id(.:format)                     contact_data#show
#                                    PATCH    /contact_data/:id(.:format)                     contact_data#update
#                                    PUT      /contact_data/:id(.:format)                     contact_data#update
#                                    DELETE   /contact_data/:id(.:format)                     contact_data#destroy
#                      type_contacts GET      /type_contacts(.:format)                        type_contacts#index
#                                    POST     /type_contacts(.:format)                        type_contacts#create
#                       type_contact GET      /type_contacts/:id(.:format)                    type_contacts#show
#                                    PATCH    /type_contacts/:id(.:format)                    type_contacts#update
#                                    PUT      /type_contacts/:id(.:format)                    type_contacts#update
#                                    DELETE   /type_contacts/:id(.:format)                    type_contacts#destroy
#                   new_user_session GET      /auth_user/sign_in(.:format)                    devise_token_auth/sessions#new
#                       user_session POST     /auth_user/sign_in(.:format)                    devise_token_auth/sessions#create
#               destroy_user_session DELETE   /auth_user/sign_out(.:format)                   devise_token_auth/sessions#destroy
#                  new_user_password GET      /auth_user/password/new(.:format)               devise_token_auth/passwords#new
#                 edit_user_password GET      /auth_user/password/edit(.:format)              devise_token_auth/passwords#edit
#                      user_password PATCH    /auth_user/password(.:format)                   devise_token_auth/passwords#update
#                                    PUT      /auth_user/password(.:format)                   devise_token_auth/passwords#update
#                                    POST     /auth_user/password(.:format)                   devise_token_auth/passwords#create
#           cancel_user_registration GET      /auth_user/cancel(.:format)                     devise_token_auth/registrations#cancel
#              new_user_registration GET      /auth_user/sign_up(.:format)                    devise_token_auth/registrations#new
#             edit_user_registration GET      /auth_user/edit(.:format)                       devise_token_auth/registrations#edit
#                  user_registration PATCH    /auth_user(.:format)                            devise_token_auth/registrations#update
#                                    PUT      /auth_user(.:format)                            devise_token_auth/registrations#update
#                                    DELETE   /auth_user(.:format)                            devise_token_auth/registrations#destroy
#                                    POST     /auth_user(.:format)                            devise_token_auth/registrations#create
#           auth_user_validate_token GET      /auth_user/validate_token(.:format)             devise_token_auth/token_validations#validate_token
#                  auth_user_failure GET      /auth_user/failure(.:format)                    devise_token_auth/omniauth_callbacks#omniauth_failure
#                                    GET      /auth_user/:provider/callback(.:format)         devise_token_auth/omniauth_callbacks#omniauth_success
#                                    GET|POST /omniauth/:provider/callback(.:format)          devise_token_auth/omniauth_callbacks#redirect_callbacks
#                   omniauth_failure GET|POST /omniauth/failure(.:format)                     devise_token_auth/omniauth_callbacks#omniauth_failure
#                                    GET      /auth_user/:provider(.:format)                  redirect(301)
#                  new_admin_session GET      /auth_admin/sign_in(.:format)                   users/sessions#new
#                      admin_session POST     /auth_admin/sign_in(.:format)                   users/sessions#create
#              destroy_admin_session DELETE   /auth_admin/sign_out(.:format)                  users/sessions#destroy
#                 new_admin_password GET      /auth_admin/password/new(.:format)              devise_token_auth/passwords#new
#                edit_admin_password GET      /auth_admin/password/edit(.:format)             devise_token_auth/passwords#edit
#                     admin_password PATCH    /auth_admin/password(.:format)                  devise_token_auth/passwords#update
#                                    PUT      /auth_admin/password(.:format)                  devise_token_auth/passwords#update
#                                    POST     /auth_admin/password(.:format)                  devise_token_auth/passwords#create
#          cancel_admin_registration GET      /auth_admin/cancel(.:format)                    devise_token_auth/registrations#cancel
#             new_admin_registration GET      /auth_admin/sign_up(.:format)                   devise_token_auth/registrations#new
#            edit_admin_registration GET      /auth_admin/edit(.:format)                      devise_token_auth/registrations#edit
#                 admin_registration PATCH    /auth_admin(.:format)                           devise_token_auth/registrations#update
#                                    PUT      /auth_admin(.:format)                           devise_token_auth/registrations#update
#                                    DELETE   /auth_admin(.:format)                           devise_token_auth/registrations#destroy
#                                    POST     /auth_admin(.:format)                           devise_token_auth/registrations#create
#          auth_admin_validate_token GET      /auth_admin/validate_token(.:format)            devise_token_auth/token_validations#validate_token
#                 auth_admin_failure GET      /auth_admin/failure(.:format)                   devise_token_auth/omniauth_callbacks#omniauth_failure
#                                    GET      /auth_admin/:provider/callback(.:format)        devise_token_auth/omniauth_callbacks#omniauth_success
#                                    GET|POST /omniauth/:provider/callback(.:format)          devise_token_auth/omniauth_callbacks#redirect_callbacks
#                                    GET|POST /omniauth/failure(.:format)                     devise_token_auth/omniauth_callbacks#omniauth_failure
#                                    GET      /auth_admin/:provider(.:format)                 redirect(301)
#                                    GET      /bans/showBansUser/:id(.:format)                bans#showBansUser
#     organization_change_event_name PATCH    /organization/change_event_name(.:format)       organizations#changeEventName
#          organization_cancel_event DELETE   /organization/cancel_event(.:format)            organizations#cancelEvent
#              voluntary_leave_event DELETE   /voluntary/leave_event(.:format)                voluntaries#leaveEvent
#            user_get_used_usernames GET      /user/get_used_usernames(.:format)              users#getUsedUsernamesAsPDF
#                        attachments GET      /attachments(.:format)                          attachments#index
#                                    POST     /attachments(.:format)                          attachments#create
#                         attachment GET      /attachments/:id(.:format)                      attachments#show
#                                    PATCH    /attachments/:id(.:format)                      attachments#update
#                                    PUT      /attachments/:id(.:format)                      attachments#update
#                                    DELETE   /attachments/:id(.:format)                      attachments#destroy
#                          locations GET      /locations(.:format)                            locations#index
#                                    POST     /locations(.:format)                            locations#create
#                           location GET      /locations/:id(.:format)                        locations#show
#                                    PATCH    /locations/:id(.:format)                        locations#update
#                                    PUT      /locations/:id(.:format)                        locations#update
#                                    DELETE   /locations/:id(.:format)                        locations#destroy
#                  event_voluntaries GET      /event_voluntaries(.:format)                    event_voluntaries#index
#                                    POST     /event_voluntaries(.:format)                    event_voluntaries#create
#                    event_voluntary GET      /event_voluntaries/:id(.:format)                event_voluntaries#show
#                                    PATCH    /event_voluntaries/:id(.:format)                event_voluntaries#update
#                                    PUT      /event_voluntaries/:id(.:format)                event_voluntaries#update
#                                    DELETE   /event_voluntaries/:id(.:format)                event_voluntaries#destroy
#                               plus GET      /plus(.:format)                                 plus#index
#                                    POST     /plus(.:format)                                 plus#create
#                                plu GET      /plus/:id(.:format)                             plus#show
#                                    PATCH    /plus/:id(.:format)                             plus#update
#                                    PUT      /plus/:id(.:format)                             plus#update
#                                    DELETE   /plus/:id(.:format)                             plus#destroy
#                               bans GET      /bans(.:format)                                 bans#index
#                                    POST     /bans(.:format)                                 bans#create
#                                ban GET      /bans/:id(.:format)                             bans#show
#                                    PATCH    /bans/:id(.:format)                             bans#update
#                                    PUT      /bans/:id(.:format)                             bans#update
#                                    DELETE   /bans/:id(.:format)                             bans#destroy
#                        departments GET      /departments(.:format)                          departments#index
#                                    POST     /departments(.:format)                          departments#create
#                         department GET      /departments/:id(.:format)                      departments#show
#                                    PATCH    /departments/:id(.:format)                      departments#update
#                                    PUT      /departments/:id(.:format)                      departments#update
#                                    DELETE   /departments/:id(.:format)                      departments#destroy
#                     minicipalities GET      /minicipalities(.:format)                       minicipalities#index
#                                    POST     /minicipalities(.:format)                       minicipalities#create
#                       minicipality GET      /minicipalities/:id(.:format)                   minicipalities#show
#                                    PATCH    /minicipalities/:id(.:format)                   minicipalities#update
#                                    PUT      /minicipalities/:id(.:format)                   minicipalities#update
#                                    DELETE   /minicipalities/:id(.:format)                   minicipalities#destroy
#            organization_categories GET      /organization_categories(.:format)              organization_categories#index
#                                    POST     /organization_categories(.:format)              organization_categories#create
#              organization_category GET      /organization_categories/:id(.:format)          organization_categories#show
#                                    PATCH    /organization_categories/:id(.:format)          organization_categories#update
#                                    PUT      /organization_categories/:id(.:format)          organization_categories#update
#                                    DELETE   /organization_categories/:id(.:format)          organization_categories#destroy
#                    theme_interests GET      /theme_interests(.:format)                      theme_interests#index
#                                    POST     /theme_interests(.:format)                      theme_interests#create
#                     theme_interest GET      /theme_interests/:id(.:format)                  theme_interests#show
#                                    PATCH    /theme_interests/:id(.:format)                  theme_interests#update
#                                    PUT      /theme_interests/:id(.:format)                  theme_interests#update
#                                    DELETE   /theme_interests/:id(.:format)                  theme_interests#destroy
#                      theme_interes GET      /theme_interes(.:format)                        theme_interes#index
#                                    POST     /theme_interes(.:format)                        theme_interes#create
#                       theme_intere GET      /theme_interes/:id(.:format)                    theme_interes#show
#                                    PATCH    /theme_interes/:id(.:format)                    theme_interes#update
#                                    PUT      /theme_interes/:id(.:format)                    theme_interes#update
#                                    DELETE   /theme_interes/:id(.:format)                    theme_interes#destroy
#                      organizations GET      /organizations(.:format)                        organizations#index
#                                    POST     /organizations(.:format)                        organizations#create
#                       organization GET      /organizations/:id(.:format)                    organizations#show
#                                    PATCH    /organizations/:id(.:format)                    organizations#update
#                                    PUT      /organizations/:id(.:format)                    organizations#update
#                                    DELETE   /organizations/:id(.:format)                    organizations#destroy
#                            reasons GET      /reasons(.:format)                              reasons#index
#                                    POST     /reasons(.:format)                              reasons#create
#                             reason GET      /reasons/:id(.:format)                          reasons#show
#                                    PATCH    /reasons/:id(.:format)                          reasons#update
#                                    PUT      /reasons/:id(.:format)                          reasons#update
#                                    DELETE   /reasons/:id(.:format)                          reasons#destroy
#                             events GET      /events(.:format)                               events#index
#                                    POST     /events(.:format)                               events#create
#                              event GET      /events/:id(.:format)                           events#show
#                                    PATCH    /events/:id(.:format)                           events#update
#                                    PUT      /events/:id(.:format)                           events#update
#                                    DELETE   /events/:id(.:format)                           events#destroy
#                        voluntaries GET      /voluntaries(.:format)                          voluntaries#index
#                                    POST     /voluntaries(.:format)                          voluntaries#create
#                          voluntary GET      /voluntaries/:id(.:format)                      voluntaries#show
#                                    PATCH    /voluntaries/:id(.:format)                      voluntaries#update
#                                    PUT      /voluntaries/:id(.:format)                      voluntaries#update
#                                    DELETE   /voluntaries/:id(.:format)                      voluntaries#destroy
#                 user_polymorphisms GET      /user_polymorphisms(.:format)                   user_polymorphisms#index
#                                    POST     /user_polymorphisms(.:format)                   user_polymorphisms#create
#                  user_polymorphism GET      /user_polymorphisms/:id(.:format)               user_polymorphisms#show
#                                    PATCH    /user_polymorphisms/:id(.:format)               user_polymorphisms#update
#                                    PUT      /user_polymorphisms/:id(.:format)               user_polymorphisms#update
#                                    DELETE   /user_polymorphisms/:id(.:format)               user_polymorphisms#destroy
#                         home_index GET      /home/index(.:format)                           home#index
#                        forum_posts GET      /forum_posts(.:format)                          forum_posts#index
#                                    POST     /forum_posts(.:format)                          forum_posts#create
#                         forum_post GET      /forum_posts/:id(.:format)                      forum_posts#show
#                                    PATCH    /forum_posts/:id(.:format)                      forum_posts#update
#                                    PUT      /forum_posts/:id(.:format)                      forum_posts#update
#                                    DELETE   /forum_posts/:id(.:format)                      forum_posts#destroy
#                      forum_threads GET      /forum_threads(.:format)                        forum_threads#index
#                                    POST     /forum_threads(.:format)                        forum_threads#create
#                       forum_thread GET      /forum_threads/:id(.:format)                    forum_threads#show
#                                    PATCH    /forum_threads/:id(.:format)                    forum_threads#update
#                                    PUT      /forum_threads/:id(.:format)                    forum_threads#update
#                                    DELETE   /forum_threads/:id(.:format)                    forum_threads#destroy
#                          subforums GET      /subforums(.:format)                            subforums#index
#                                    POST     /subforums(.:format)                            subforums#create
#                           subforum GET      /subforums/:id(.:format)                        subforums#show
#                                    PATCH    /subforums/:id(.:format)                        subforums#update
#                                    PUT      /subforums/:id(.:format)                        subforums#update
#                                    DELETE   /subforums/:id(.:format)                        subforums#destroy
#                           userType GET      /userType(.:format)                             user_polymorphisms#getTypeUser
#                                    GET      /organization/events/:organization_id(.:format) events#events_organization
#                               root GET      /                                               home#index

Rails.application.routes.draw do
  get 'events/available' => 'events#events_available'
  resources :genders
  resources :theme_interests_voluntaries
  get 'devise_token_auth_override/session'

  require "devise_token_auth"
  resources :contact_data
  resources :type_contacts
  mount_devise_token_auth_for 'User', at: 'auth_user' #, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }


  mount_devise_token_auth_for 'Admin', at: 'auth_admin', controllers: { sessions: "users/sessions"}

  # as :admin do
  #   # Define routes for Admin within this block.
  # end
  # as :admin do
  
  # end
  get 'bans/showBansUser/:id' => 'bans#showBansUser'

  ##match 'organization/new_event' => 'organizations#createEvent', via: :post
  match 'organization/change_event_name' => 'organizations#changeEventName', via: :patch
  match 'organization/cancel_event' => 'organizations#cancelEvent', via: :delete

 # match 'voluntary/join_event' => 'voluntaries#joinEvent', via: :post
  match 'voluntary/leave_event' => 'voluntaries#leaveEvent', via: :delete

  match 'user/get_used_usernames' => 'users#getUsedUsernamesAsPDF', via: :get

  resources :attachments
  resources :locations
  resources :event_voluntaries
  resources :plus
  resources :bans
  resources :departments
  resources :minicipalities
  resources :organization_categories
  resources :theme_interests
  resources :theme_interes
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
  get 'organization/events/:organization_id' => "events#events_organization"
 
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
