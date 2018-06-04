class RenameColumnSizeInPlanetToEncryptedSize < ActiveRecord::Migration[5.1]
  def change
    rename_column :planets, :size, :encrypted_size
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
