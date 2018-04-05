class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.text :nombre
      t.integer :edad
      t.text :sexo
      t.text :tipo
      t.boolean :alive
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
