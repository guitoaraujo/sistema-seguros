class ChangeValidityType < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :validity, :date
  end
end
