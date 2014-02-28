class AddBelongRefToArticles < ActiveRecord::Migration
  def change
    add_reference :articles, :belong, index: true
  end
end
