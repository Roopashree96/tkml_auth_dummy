Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
  #

TkmlAuth.configure do |config|
  config.base_url = "http://localhost:3002"
  config.site_token = "87fee119-5d3f-48a7-ba86-b2f3b6e4bfbe"
  config.site_name = "Yeahh"
  config.username_column = "username"
  config.remote_column = "remote_id"
  config.user_model = User
  config.login_path = "/auth/sign_in"
  config.email_from = "admin@awesome_site.com"
  config.password_reset_destination = "http://localhost:3000/auth/password/reset"
  config.redeem_invite_path = "http://localhost:3000/auth/invitation/accept"
end

end
