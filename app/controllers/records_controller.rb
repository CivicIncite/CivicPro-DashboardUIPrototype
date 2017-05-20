class RecordsController < ApplicationController
  before_action :set_record, only: [:edit, :update, :destroy]

  def dashboard
    @records = Record.order('date DESC')
    @lobbyists = Lobbyist.order('date DESC')
  end

  def index
    @records = Record.order('date DESC')
  end

  def new
    @record = Record.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to action: :admin, notice: 'Record was successfully updated.' }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @record.destroy
    respond_to do |format|
      format.html { redirect_to action: :admin, notice: 'Record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def admin
    @records = Record.all
    @lobbyists = Lobbyist.all
  end

  def create
  @record = Record.new(record_params)
    respond_to do |format|
      if @record.save
        format.html { redirect_to action: :index, notice: 'Record was successfully created.' }
        format.json { render :index, status: :created, location: @record }
      else
        format.html { render :new }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  def archives
  end

  def preferences
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

  def record_params
    params.require(:record).permit(:description, :government, :agency, :record_type, :date, :legislation_status, :address, :url)
  end
end
