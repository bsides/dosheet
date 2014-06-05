class ListValuesController < ApplicationController
  before_action :set_list_value, only: [:show, :edit, :update, :destroy]

  # GET /list_values
  # GET /list_values.json
  def index
    @list_values = ListValue.all
  end

  # GET /list_values/1
  # GET /list_values/1.json
  def show
  end

  # GET /list_values/new
  def new
    @list_value = ListValue.new
  end

  # GET /list_values/1/edit
  def edit
  end

  # POST /list_values
  # POST /list_values.json
  def create
    @list_value = ListValue.new(list_value_params)

    respond_to do |format|
      if @list_value.save
        format.html { redirect_to @list_value, notice: 'List value was successfully created.' }
        format.json { render :show, status: :created, location: @list_value }
      else
        format.html { render :new }
        format.json { render json: @list_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_values/1
  # PATCH/PUT /list_values/1.json
  def update
    respond_to do |format|
      if @list_value.update(list_value_params)
        format.html { redirect_to @list_value, notice: 'List value was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_value }
      else
        format.html { render :edit }
        format.json { render json: @list_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_values/1
  # DELETE /list_values/1.json
  def destroy
    @list_value.destroy
    respond_to do |format|
      format.html { redirect_to list_values_url, notice: 'List value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_value
      @list_value = ListValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_value_params
      params.require(:list_value).permit(:text, :list_id, :system_id)
    end
end
