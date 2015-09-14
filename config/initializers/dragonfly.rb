require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick
  plugin :avatarmagick

  secret "85d265d2041e6e6e57d98576c60287086eb3dddc528ff51017c967a6b65ec381"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
# if defined?(ActiveRecord::Base)
#   ActiveRecord::Base.extend Dragonfly::Model
#   ActiveRecord::Base.extend Dragonfly::Model::Validations
# end
