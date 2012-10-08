class CreatePerspectives < ActiveRecord::Migration
  def change
    create_table :perspectives do |t|
      t.string :user
      t.string :video_id
      t.integer :start_offset
      t.references :episode

      t.timestamps
    end
    add_index :perspectives, :episode_id
  end
end
