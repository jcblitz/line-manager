class AddIndexToLines < ActiveRecord::Migration
  def change
    add_index :lines, :type
  end
end
