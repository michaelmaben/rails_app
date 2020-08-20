class CreateThirdPeople < ActiveRecord::Migration[6.0]
  def change
    create_table :third_people do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.json :conditions

      t.timestamps
    end
  end
end
