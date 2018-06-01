# encoding: utf-8
#
# Use webpack for assets
#
activate :external_pipeline,
         name: :webpack,
         command: build? ?  "yarn run build" : "yarn run start",
         source: ".tmp/dist",
         latency: 1

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :i18n, :mount_at_root => :fr

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascript'
set :images_dir, 'assets/images'
set :fonts_dir,   'assets/fonts'

activate :autoprefixer
activate :protect_emails

# Build-specific configuration
configure :build do
  # Enable cache buster (except for images)
  activate :asset_hash, ignore: [/\.jpg\Z/, /\.png\Z/]
  set :relative_links, true
  activate :relative_assets
end

activate :deploy do |deploy|
  deploy.deploy_method  = :git
  deploy.branch         = 'gh-pages'
  deploy.build_before   = true
end


