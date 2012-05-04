# Email settings
ActionMailer::Base.default_url_options[:host] = APP_CONFIG[:domain]
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address => APP_CONFIG[:smtp_server],
	:port => APP_CONFIG[:smtp_port],
	:enable_starttls_auto => false
}
