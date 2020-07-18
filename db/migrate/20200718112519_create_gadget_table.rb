class CreateGadgetTable < ActiveRecord::Migration[6.0]
  def change
    create_table :gadgets do |t|
      t.string :gadget_id
      t.string :reading
    end
  end
end
