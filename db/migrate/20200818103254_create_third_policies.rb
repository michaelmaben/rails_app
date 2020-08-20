class CreateThirdPolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :third_policies do |t|
      t.string :name
      t.json :config

      t.timestamps
    end
  end
end
