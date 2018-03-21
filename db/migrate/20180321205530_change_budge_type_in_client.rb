class ChangeBudgeTypeInClient < ActiveRecord::Migration[5.1]
  def change
    change_column :clients, :budge, :integer
  end
end
