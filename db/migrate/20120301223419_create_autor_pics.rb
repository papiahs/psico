class CreateAutorPics < ActiveRecord::Migration
  def change
    create_table :autor_pics do |t|
      t.references :autor
      t.references :pic

      t.timestamps
    end
    add_index :autor_pics, :pic_id
  end
end
