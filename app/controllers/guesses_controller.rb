class GuessesController < ApplicationController
    def add
        @guess = Guess.create('')
end
