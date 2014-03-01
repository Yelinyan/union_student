class RemoveRrticleRefFromBelongs < ActiveRecord::Migration
  def change
  	remove_column :belongs, :article_id
  end
end
