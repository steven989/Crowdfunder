# Load the Rails application.
require File.expand_path('../application', __FILE__)

to_load_before = File.join(Rails.root, 'config','initializers','set_email_password.rb')
load(to_load_before) if File.exists? (to_load_before)

# Initialize the Rails application.
Crowdfunder::Application.initialize!
