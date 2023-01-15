class UserGuessAssociation < ActiveRecord::Migration[7.0]
  def change
    add_reference :guesses, :users, foreign_key: true
  end
end
