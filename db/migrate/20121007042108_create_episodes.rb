class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.references :series

      t.timestamps
    end
    add_index :episodes, :series_id
  end
end
