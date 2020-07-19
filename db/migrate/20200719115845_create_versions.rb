class CreateVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :versions do |t|
      t.string :version_number
      t.string :article_id
      t.timestamps
    end
  end
end
