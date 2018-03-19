class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :set_types, only: [:new, :edit, :create, :update]
  before_action :set_insurers, only: [:new, :edit, :create, :update]
  #before_action :set_

  # GET /clients
  # GET /clients.json
  def index
    if current_user.admin?
      @clients = Client.paginate(:page => params[:page], :per_page => 10).order(register_date: :desc)
    else
      @clients = Client.where(user_id: current_user.id).paginate(:page => params[:page], :per_page => 10).order(register_date: :desc)
    end
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = current_user.clients.build
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = current_user.clients.build(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    def set_types
      @types = Client.types.keys
    end

    def set_insurers
      @insurers = Client.insurers.keys
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:register_date, :budge, :insured, :cnpj, :itens, :current_bonus, :insured_type, :supervisor, :supervisor_email, :supervisor_phone, :supervisor_cellphone, :director, :director_email, :director_phone, :director_cellphone, :last_bonus, :validity, :insurer, :assistant, :commercial_supervisor, :city, :estate, :obs)
    end
end
