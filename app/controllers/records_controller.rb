class RecordsController < ApplicationController
  def index
    @records = Record.all
    @lobbyists = Lobbyist.all
  end

  # GET /resources/new
  def new
    @record = Record.new
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

  def show
    @record = Record.find(params[:id])
  end

  def legislative_archives
  end

  def preferences
  end

  def code_amendments
  end

  def record_params
    params.require(:record).permit(:description, :government, :agency, :record_type, :date, :legislation_status)
  end
end
