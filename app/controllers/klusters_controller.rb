class KlustersController < ApplicationController
  before_action :set_kluster, only: [:show, :edit, :update, :destroy]

  # GET /klusters
  # GET /klusters.json
  def index
    logger.info("@@@@@@@Session User ID: #{current_user.id}")
    @klusters = Kluster.where("user_id = '#{current_user.id}'")
    #@klusters = Kluster.all
  end

  # GET /klusters/1
  # GET /klusters/1.json
  def show
  end

  # GET /klusters/new
  def new
    @kluster = Kluster.new
    1.times{@kluster.kluster_documents.build}
  end

  # GET /klusters/1/edit
  def edit
    @kluster = Kluster.find(params[:id])
    1.times{@kluster.kluster_documents.build}
    
  end

  # POST /klusters
  # POST /klusters.json
  def create
    @kluster = Kluster.new(kluster_params)
    @kluster.user_id = current_user.id
    respond_to do |format|
      if @kluster.save
        format.html { redirect_to @kluster, notice: 'Kluster was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kluster }
      else
        format.html { render action: 'new' }
        format.json { render json: @kluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klusters/1
  # PATCH/PUT /klusters/1.json
  def update
    respond_to do |format|
      if @kluster.update(kluster_params)
        format.html { redirect_to @kluster, notice: 'Kluster was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kluster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klusters/1
  # DELETE /klusters/1.json
  def destroy
    @kluster.destroy
    respond_to do |format|
      format.html { redirect_to klusters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kluster
      @kluster = Kluster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kluster_params
      params.require(:kluster).permit(:name, :description, :kluster_documents_attributes =>[:id,:document])
    end
end
