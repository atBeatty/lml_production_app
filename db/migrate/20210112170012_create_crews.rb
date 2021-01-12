class CreateCrews < ActiveRecord::Migration[6.0]
  def change
    create_table :crews do |t|
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
