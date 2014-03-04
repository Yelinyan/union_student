class CreateDownLoadFiles < ActiveRecord::Migration
  def change
    create_table :down_load_files do |t|
      t.string :title

      t.timestamps
    end
  end
end
