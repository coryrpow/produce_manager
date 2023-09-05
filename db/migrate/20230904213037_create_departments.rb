class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :department_name
      t.string :location
      t.boolean :in_stock
      t.integer :holding_power

      t.timestamps
    end
  end
end
