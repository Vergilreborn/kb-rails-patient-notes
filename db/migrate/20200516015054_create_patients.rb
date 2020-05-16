class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_Name
      t.string :last_Name
      
      t.timestamps
    end
  end
end
