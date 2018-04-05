class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :nombre
      t.text :apellido
      t.text :email

      t.timestamps
    end
  end
end
