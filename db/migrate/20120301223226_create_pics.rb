class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :titulo
      t.string :nombrearchivo
      t.string :tipo

      t.timestamps
    end
  end
end
