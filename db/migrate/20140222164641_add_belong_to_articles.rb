class AddBelongToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :belong, :string
  end
end
