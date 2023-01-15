class RoundGuessAssociation < ActiveRecord::Migration[7.0]
  def change
    add_reference :guesses, :rounds, foreign_key: true
  end
end
