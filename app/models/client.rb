class Client < ApplicationRecord
  require 'csv'
  belongs_to :user

  validates :register_date, :validity, :budge, :cnpj, :insured, presence: true
  validates :cnpj, uniqueness: true

  enum types:   [ 'Prospect', 'Renovação ForteBens' ]
  enum insurers: [ 'Itau',
                  'Porto',
                  'Sulamerica',
                  'Bradesco',
                  'Generalli',
                  'Tokio Marine',
                  'Librty Seguros',
                  'Alfa',
                  'Sompo Seguros',
                  'Suhai Seguradora',
                  'Mapfre',
                  'HDI' ]
  enum employees: [ 'Leonardo',
                    'Fabio',
                    'Bruna',
                    'Lorran',
                    'Priscila',
                    'Veronica',
                    'Paulo',
                    'Rafaela',
                    'Kelly',
                    'Flavia',
                    'Camila',
                    'Richard' ]


  def self.import(file, user)
    CSV.foreach(file.path, headers: true, col_sep: ';') do |row|
      row << { user_id: user }
      if row['validity'].blank?
        row['validity'] = 100.year.from_now.strftime('%d/%m/%Y')
      end

      next if Client.where(cnpj: row['cnpj']).count > 0
      Client.create! row.to_hash

    end
  end
end
