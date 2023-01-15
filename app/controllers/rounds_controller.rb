class RoundsController < ApplicationController
    def index
        @round = Round.order('day DESC').first
        render json: @round, status: 200
    end
end
