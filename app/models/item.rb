class Item < ApplicationRecord
	has_many :category_items
	has_many :categories , through: :category_items
	validates_presence_of :nome, :descricao, :preco
	validates :nome, length: {minimum: 5, maximum:20}

end
