class RenameColumnNameInPlanetToEncryptedName < ActiveRecord::Migration[5.1]
  def change
    rename_column :planets, :name, :encrypted_name
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
