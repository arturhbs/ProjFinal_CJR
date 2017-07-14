class ItemController < ApplicationController

	def index
		@itens = Item.all.order :nome
	end	

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end


	def create
	   @item =  Item.new(items_params)
	   if @item.save
	   	flash[:notice]= "Item feito com sucesso"
	   	redirect_to root_path
	   else
	   	render 'new'	
	   end

	end	

	def busca
	end

	def destroy

	end

	def edit

	end

	def update
	end	

	private 

	def items_params
		params.require(:item).permit(:nome, :descricao,:preco, category_ids:[] )
	end

end
