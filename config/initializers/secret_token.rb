# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Tasks::Application.config.secret_key_base = '260f06815cb30f254e83d95505e34224dc1d2016128e73bb8593d3955c6e86be513b6c91955445c3cc74256b6a3ca9fdd2881c2a279015b81c8e299c762bcbaa'
