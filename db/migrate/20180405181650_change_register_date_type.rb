class ChangeRegisterDateType < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :register_date, :date
  end
end
