class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
      t.string :nombre
      t.string :apellido
      t.text :cv
      t.integer :robot

      t.timestamps
    end
  end
end
