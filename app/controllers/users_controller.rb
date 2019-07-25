class UsersController < ApplicationController
    before_action :find_user, only: [:show, :destroy]

    def show
        @recipes = @user.recipes
    end

    def destroy
        @user.destroy
        redirect_to # home
    end

    private

    def find_user
        @user = User.find(params[:id])
    end
end
