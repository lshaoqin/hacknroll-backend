require 'securerandom'

class UsersController < ApplicationController
    def create
        @user = User.create(session_id: SecureRandom.hex(16))
        render json: @user, status: 200
    end
end
