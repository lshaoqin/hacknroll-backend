class GuessesController < ApplicationController
    def add
        @guess = Guess.create(guess: params[:guess], users_id: params[:session_id], rounds_id: params[:round_id])
        if @guess.save
            render json: @guess, status: 200
        else
            render json: {errors: @guess.errors}, status: :unprocessable_entity
        end
    end
end
