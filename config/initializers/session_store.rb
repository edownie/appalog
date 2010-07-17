# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ericdownie_session',
  :secret      => '734c3af24bc4b89621ba1a3217d160c738be7ae1da96b016c834b0185999dbe51e6214e72985c3c35803a5e5a77436b6c5434b5483a12e8311a2136db0a585d0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
