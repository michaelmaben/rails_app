class AddColumnToOtherPerson < ActiveRecord::Migration[6.0]
  def change
    add_column(:other_people, :conditions, :text, array: true)
  end
end
