class Client < ApplicationRecord

  belongs_to :user

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
end
