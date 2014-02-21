class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :describe

      t.timestamps
    end
  end
end
