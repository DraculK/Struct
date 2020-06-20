class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string :name
      t.boolean :explicit
      t.references :album, null: false, foreign_key: true
      t.string :genre

      t.timestamps
    end
  end
end
