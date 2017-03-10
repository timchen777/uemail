Mailit::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = true

  # Change mail delvery to either :smtp, :sendmail, :file, :test
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.delivery_method = :letter_opener
  # config.action_mailer.smtp_settings = {
    # address: "smtp.gmail.com",
    # port: 587,
    # domain: "https://ide.c9.io/timchen7/ucast",
    # authentication: "plain",
    # enable_starttls_auto: true,
    # user_name: ENV["GMAIL_USERNAME"],
    # password: ENV["GMAIL_PASSWORD"]
    # user_name: ENV["timchen7@gmail.com"],
    # password: ENV[""]
  # }
# config.action_mailer.delivery_method = :smtp
# config.action_mailer.smtp_settings = {
  # :user_name => 'timchen7@gmail.com',
  # :password => '',
  # :address => 'https://usendmail.herokuapp.com/',
  # :domain => 'https://usendmail.herokuapp.com/',
  # :address => 'https://ide.c9.io/timchen7/ucast',
  # :domain => 'https://ide.c9.io/timchen7/ucast',
  # :port => '2525',
  # :authentication => :cram_md5
# }
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :user_name => 'f96254d422f8de',
  :password => 'dca8a6de674a29',
  :address => 'smtp.mailtrap.io',
  :domain => 'smtp.mailtrap.io',
  :port => '2525',
  :authentication => :cram_md5
}

  # specify what domain to use for mailer URLs
  # config.action_mailer.default_url_options = {host: "localhost:3000"}
  config.action_mailer.default_url_options = {host: "https://ide.c9.io/timchen7/ucast"}
  # config.action_mailer.default_url_options = {host: "https://usendemail.herokuapp.com"}
  # config.action_mailer.default_url_options = { :host => 'https://usendemail.herokuapp.com'}

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
end
