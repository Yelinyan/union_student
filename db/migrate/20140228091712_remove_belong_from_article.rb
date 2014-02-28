class RemoveBelongFromArticle < ActiveRecord::Migration
  def change
  	remove_column :articles,:belong
  end
end
