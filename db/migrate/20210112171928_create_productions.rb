class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.string :name
      t.string :client
      t.belongs_to :crew, null: false, foreign_key: true

      t.timestamps
    end
  end
end
