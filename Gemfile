source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Gema poblar base de datos
gem 'faker'
# gema paginacion
gem 'will_paginate', '~> 3.1.0'
# Gema para imagenes y archivos

gem 'carrierwave'

# Gema de idioma
#gem 'rails-i18n', '~> 5.0.0'
#Gema para autenticacion de user
gem 'devise'
# Gema para tokens

gem 'active_model_serializers', '~> 0.10.0'
gem 'rack-cors', :require => 'rack/cors'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'devise_token_auth', github: 'lynndylanhurley/devise_token_auth'
##gem 'omniauth'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

#gem reporte pdf
gem 'prawn'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem "wkhtmltopdf-binary-edge"

# Gema para graficos en el pdf 
gem "chartkick"
# Gema para agrupar por fechas
gem 'groupdate'

# gema para graficos
gem 'squid', '~> 1.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'

  # Gema para comentarios en los archivos de trabajo.
  gem 'annotate'

end



# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg'
end
