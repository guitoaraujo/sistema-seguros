class ChangeDateNameInClient < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :date, :register_date
  end
end
