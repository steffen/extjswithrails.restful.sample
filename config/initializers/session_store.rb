# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_extjswithrails.blog.sample_session',
  :secret      => '17df592c3de6ed3dd5a757d525da2dd35ca6e6787482d2afe97f355b948b21056ec06a98ac2862a9e8787e25839c3dfdf86e68a44b142820e4f53ddf2fd60b60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
