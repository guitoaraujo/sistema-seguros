class ChangeDateTypeInClient < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :date, :datetime
    change_column :clients, :validity, :datetime
  end
end
