class CreateChampions < ActiveRecord::Migration[5.1]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :role
      t.string :guide

      t.timestamps
    end
  end
end
