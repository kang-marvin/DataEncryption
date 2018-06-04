class Planet < ApplicationRecord
  # set secret key to use for Data Encryption
  # You can also set different secret keys for different column types

  string_secret_key = ENV["_STRING_DATABASE_ENCRYTION_KEY"]||="E7OlfRkR5yMlxHVUUHXFlkCPubGWjH9J"
  integer_secret_key = ENV["_INTEGER_DATABASE_ENCRYTION_KEY"]||="3BFA19ECEE9871B77A7DEDA9D62BAZ4q8JU4"

  attr_encrypted :name, key: string_secret_key
  attr_encrypted :size, key: integer_secret_key

  validates_presence_of :name
  validates_presence_of :size

  has_one :chemical_composition

end
