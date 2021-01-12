class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :productions, :crew_id, :integer, :null => true
  end
end
