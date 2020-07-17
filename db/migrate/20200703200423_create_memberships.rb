class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.string :user_id
      t.string :membership_status
      t.datetime :membership_start
      t.timestamps
    end
  end
end
