class RecipesController < ApplicationController

    before_action :find_recipe, only: [:show]

    def index
    @recipes = Recipe.all
    end
    
    def show
        @user = User.find(@recipe.user_id)

    end

    def new
        @recipe = Recipe.new()
        @recipe.ingredients.build()
        @recipe.ingredients.build()
    end

    def create

        @recipe = Recipe.new(recipe_params)

        if @recipe.valid?
            @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end

    end



private

def recipe_params
    params.require(:recipe).permit(:name, :user_id, ingredients_attributes: [:name])
end

def find_recipe
  @recipe =  Recipe.find(params[:id])
end

end
