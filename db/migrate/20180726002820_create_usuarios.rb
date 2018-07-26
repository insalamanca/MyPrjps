class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo

      t.timestamps
    end
  end
end
