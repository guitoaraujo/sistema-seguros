class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.datetime :register_date
      t.float :budge
      t.string :insured
      t.string :cnpj
      t.text :itens
      t.integer :current_bonus
      t.string :type
      t.string :supervisor
      t.string :supervisor_email
      t.string :supervisor_phone
      t.string :supervisor_cellphone
      t.string :director
      t.string :director_email
      t.string :director_phone
      t.string :director_cellphone
      t.integer :last_bonus
      t.datetime :validity
      t.string :insurer
      t.string :assistant
      t.string :commercial_supervisor
      t.string :city
      t.string :estate
      t.text :obs

      t.timestamps
    end
  end
end
