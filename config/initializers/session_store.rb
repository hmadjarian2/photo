# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photo_session',
  :secret      => 'bd5b431e5a7219ddb6cc95d7dc3d82c50babf1f0e1fbb3fc72781046c9780262c0af58a65e85cc2aefacc14fa0f3c88205e2e50f7e2d9005235b86ac8c60a333'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
