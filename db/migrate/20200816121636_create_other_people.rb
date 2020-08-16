class CreateOtherPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :other_people do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.json :conditions

      t.timestamps
    end
  end
end
