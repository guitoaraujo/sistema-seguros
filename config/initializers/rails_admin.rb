RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model Client do
    list do
      field :register_date
      field :budge
      field :insured
      field :cnpj
      field :updated_at
      field :user
      field :itens
      field :current_bonus
      field :insured_type
      field :supervisor
      field :supervisor_email
      field :supervisor_phone
      field :supervisor_cellphone
      field :director
      field :director_email
      field :director_phone
      field :director_cellphone
      field :last_bonus
      field :validity
      field :insurer
      field :assistant
      field :commercial_supervisor
      field :city
      field :estate
      field :obs
      sort_by :updated_at
      items_per_page 100
    end
  end
  config.authorize_with do
    if user_signed_in?
      redirect_to main_app.root_path unless current_user.admin?
    else
      redirect_to main_app.root_path
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
