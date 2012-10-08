class ChangeDataTypeForStartOffset < ActiveRecord::Migration
  def change
    change_column :perspectives, :start_offset, :decimal, precision: 4, scale: 2
  end
end
