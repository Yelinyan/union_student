class AddArticleRefToBelongs < ActiveRecord::Migration
  def change
    add_reference :belongs, :article, index: true
  end
end
