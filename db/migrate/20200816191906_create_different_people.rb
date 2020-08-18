class CreateDifferentPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :different_people do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :conditions

      t.timestamps
    end
  end
end
