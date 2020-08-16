class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :name
      t.json :settings

      t.timestamps
    end
  end
end
