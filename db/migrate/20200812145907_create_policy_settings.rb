class CreatePolicySettings < ActiveRecord::Migration[6.0]
  def change
    create_table :policy_settings do |t|
      t.string :name
      t.json :settings
    end
  end
end
