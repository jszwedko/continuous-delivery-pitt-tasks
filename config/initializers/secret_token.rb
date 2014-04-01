# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Tasks::Application.config.secret_key_base = 'db1c748cf38848ad3ba36c8612df42056674fbcbbf220caf23a801de886df75aef0b01786eefe4f57b25b8ad3adba3f68d13d38ecfa39aefc8f1612876cf4113'
