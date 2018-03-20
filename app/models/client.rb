class Client < ApplicationRecord

  belongs_to :user

  validates :register_date, :validity, :budge, :last_bonus, presence: true

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
  enum employees: [ 'Leandro',
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
end
