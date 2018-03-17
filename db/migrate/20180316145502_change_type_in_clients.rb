class ChangeTypeInClients < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :type, :insured_type
  end
end
