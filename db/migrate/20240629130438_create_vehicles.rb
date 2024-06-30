class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :brand
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end

#criar a tabela com uuid como chave primária é boa pratica. Para fazer isso adicionar depois do nome da tabela ", id: :uuid "