class AddColumnArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :current_version, :string
  end
end
