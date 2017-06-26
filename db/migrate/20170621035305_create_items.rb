class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :nome
      t.text :descricao
      t.float :preco

      t.timestamps
    end
  end
end
