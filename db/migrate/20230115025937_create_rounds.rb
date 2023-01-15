class CreateRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :rounds do |t|
      t.string :picture
      t.integer :day
      t.timestamps
    end
  end
end
