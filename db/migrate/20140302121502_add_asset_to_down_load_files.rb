class AddAssetToDownLoadFiles < ActiveRecord::Migration
  def change
    add_column :down_load_files, :asset, :string
  end
end
