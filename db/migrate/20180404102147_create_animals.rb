class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :nombre
      t.integer :edad
      t.string :sexo
      t.string :tipo
      t.boolean :alive

      t.timestamps
    end
  end
end
