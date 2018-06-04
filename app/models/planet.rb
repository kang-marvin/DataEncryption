class Planet < ApplicationRecord
  # set secret key to use for Data Encryption
  secret_key = ENV["_DATABASE_ENCRYTION_KEY"]||="E7OlfRkR5yMlxHVUUHXFlkCPubGWjH9J"

  attr_encrypted :name, key: secret_key
  validates_presence_of :name

  has_one :chemical_composition

end
