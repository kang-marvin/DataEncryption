class CreateChemicalCompositions < ActiveRecord::Migration[5.1]
  def change
    create_table :chemical_compositions do |t|
      t.references :planet, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
