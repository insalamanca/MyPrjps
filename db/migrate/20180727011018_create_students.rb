class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.integer :documnto

      t.timestamps
    end
  end
end
