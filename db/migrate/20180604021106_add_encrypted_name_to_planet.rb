class AddEncryptedNameToPlanet < ActiveRecord::Migration[5.1]
  def change
    add_column :planets, :encrypted_name, :string
  end
end
