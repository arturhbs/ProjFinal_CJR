
class CategoriesController < ApplicationController

	def index
		@categorias = Category.all
	end
	
	def show
		@categoria = Category.find(params[:id])
	end

	def new
		@categoria = Category.new
	end

	def create
		@categoria = Category.new(category_params)
		if @categoria.save
			redirect_to categories_path
		else
			render 'new'	
		end	
	end
	def destroy

	end

	def edit

	end

	def update
	end	

	private	

	def category_params
		params.require(:category).permit(:nome)	
	end
end

