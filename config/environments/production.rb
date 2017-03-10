Mailit::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  # Defaults to Rails.root.join("public/assets")
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
#------------- using Amazon SES -----------------------------  
# aws_credentials = Aws::Credentials.new(ENV['AKIAJZK4NBTKD4UMGH3A'], ENV['qs1R4bGGTpCdZdhOgyZ03dvCZdA4NZV3WyJdCLye'])
# Aws::Rails.add_action_mailer_delivery_method(:aws_ses, credentials: aws_credentials, region: ENV['us-east-1'])
# config.action_mailer.delivery_method = :aws_ses  
#------------- using mailtrap ----------------------------- 
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.smtp_settings = {
  # :user_name => 'f96254d422f8de',
  # :password => 'dca8a6de674a29',
  # :address => 'smtp.mailtrap.io',
  # :domain => 'smtp.mailtrap.io',
  # :port => '2525',
  # :authentication => :cram_md5
# }

#------------- using SendGrid -----------------------------  
# https://sendgrid.com/docs/Integrate/Frameworks/rubyonrails.html
# http://stackoverflow.com/questions/4114835/heroku-devise-missing-host-to-link-to-please-provide-host-parameter-or-set-d
# https://sendgrid.com/docs/Integrate/index.html?ls=Advertisement&cid=70180000000cl5Z&lsd=adwords&kw=%2Bsendgrid&mt=b&gaid=Integration_Sitelink&mc=Paid%20Search&mcd=AdWords&keyword=%2Bsendgrid&network=g&matchtype=b&mobile=&content=&search=1&cvosrc=PPC.Google.%2Bsendgrid&cvo_cid=Integration_Sitelink&gclid=Cj0KEQiAl4TGBRDhgvmikdHPsdABEiQAtBcc8IpcMCQ16f4IkjZxKGcL_882EXjx2J6ef-fiyuF6bXYaAphu8P8HAQ
# https://sendgrid.com/docs/Classroom/Troubleshooting/Account_Administration/heroku_users_find_your_sendgrid_credentials.html
# Use ports 25 or 587 for plain/TLS connections and port 465 for SSL connections
# https://elements.heroku.com/addons/sendgrid?app=usendemail
# need to go to Heroku add-ons SendGrid and get sendgrid_user_name & password, which has FREE trial, but Heroku NOT FREE for this add-on
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :user_name => 'sendgrid_user_name',
  :password => 'sendgrid_password',
  :domain => 'https://usendemail.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,  
  :enable_starttls_auto => true  
}

  # specify what domain to use for mailer URLs
  # config.action_mailer.default_url_options = {host: "https://usendemail.herokuapp.com"}
  config.action_mailer.default_url_options = { :host => 'https://usendemail.herokuapp.com'}

end
