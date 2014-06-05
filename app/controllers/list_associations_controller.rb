class ListAssociationsController < ApplicationController
  before_action :set_list_association, only: [:show, :edit, :update, :destroy]

  # GET /list_associations
  # GET /list_associations.json
  def index
    @list_associations = ListAssociation.all
  end

  # GET /list_associations/1
  # GET /list_associations/1.json
  def show
  end

  # GET /list_associations/new
  def new
    @list_association = ListAssociation.new
  end

  # GET /list_associations/1/edit
  def edit
  end

  # POST /list_associations
  # POST /list_associations.json
  def create
    @list_association = ListAssociation.new(list_association_params)

    respond_to do |format|
      if @list_association.save
        format.html { redirect_to @list_association, notice: 'List association was successfully created.' }
        format.json { render :show, status: :created, location: @list_association }
      else
        format.html { render :new }
        format.json { render json: @list_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_associations/1
  # PATCH/PUT /list_associations/1.json
  def update
    respond_to do |format|
      if @list_association.update(list_association_params)
        format.html { redirect_to @list_association, notice: 'List association was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_association }
      else
        format.html { render :edit }
        format.json { render json: @list_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_associations/1
  # DELETE /list_associations/1.json
  def destroy
    @list_association.destroy
    respond_to do |format|
      format.html { redirect_to list_associations_url, notice: 'List association was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_association
      @list_association = ListAssociation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_association_params
      params.require(:list_association).permit(:first_list_id, :second_list_id)
    end
end
