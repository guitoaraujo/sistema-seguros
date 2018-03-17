json.extract! client, :id, :date, :budge, :insured, :cnpj, :itens, :current_bonus, :type, :supervisor, :supervisor_email, :supervisor_phone, :supervisor_cellphone, :director, :director_email, :director_phone, :director_cellphone, :last_bonus, :validity, :insurer, :assistant, :commercial_supervisor, :city, :estate, :obs, :created_at, :updated_at
json.url client_url(client, format: :json)
