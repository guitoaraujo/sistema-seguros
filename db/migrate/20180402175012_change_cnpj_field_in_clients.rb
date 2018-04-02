class ChangeCnpjFieldInClients < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :cnpj, :integer
  end
end
