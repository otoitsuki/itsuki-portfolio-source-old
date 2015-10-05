# View Middleman configurations:
# http://localhost:4567/__middleman/config/

require "helpers/view_helpers.rb"
helpers ViewHelpers



# Slim HTML
# ----------------------------------------------
Slim::Engine.disable_option_validator!
set :slim, { :pretty => true, :sort_attrs => false, :format => :html }

# i18n
# ----------------------------------------------
# activate :i18n, :mount_at_root => :'zh-tw'


# Livereload
# ----------------------------------------------
configure :development do
  activate :livereload, :no_swf => true
end


# Bower Config
# ----------------------------------------------
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  @bower_assets_path = File.join "#{root}", @bower_config["directory"]
  sprockets.append_path @bower_assets_path
end


# Configure assets directories
# ----------------------------------------------
set :css_dir, 'assets/styles'
set :js_dir, 'assets/scripts'
set :images_dir, 'images'
set :fonts_dir, 'assets/fonts'
set :partials_dir, 'partials'

# Configure SASS
# ----------------------------------------------


# Other configurations
# ----------------------------------------------
set :trailing_slash, false


# Development-specific configuration
# ----------------------------------------------
configure :development do

  # activate :directory_indexes

  set :debug_assets, true

  # Output a pretty html
  ::Slim::Engine.set_options :pretty => true

  # Activate autoprefixer
  activate :autoprefixer do |config|
  config.browsers = ['last 4 versions', 'Explorer >= 9']
  end

end


# Build-specific configuration
# ----------------------------------------------
configure :build do

  compass_config do |config|
    config.output_style = :compressed
    config.line_comments = false
  end

  # Output a pretty html
  ::Slim::Engine.set_options :pretty => true
  
  # Use relative URLs
  # activate :directory_indexes
  activate :relative_assets
  
  # Activate gzip
  # activate :gzip

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Add asset fingerprinting to avoid cache issues
  activate :asset_hash

  # Enable cache buster
  activate :cache_buster

  # Activate autoprefixer
  activate :autoprefixer do |config|
  config.browsers = ['last 4 versions', 'Explorer >= 9']
  end

end
