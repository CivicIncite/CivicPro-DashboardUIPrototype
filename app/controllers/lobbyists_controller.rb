class LobbyistsController < ApplicationController
  # GET /resources/new
  def new
    @lobbyist = Lobbyist.new
  end

  def create
  @lobbyist = Lobbyist.new(lobbyist_params)
    respond_to do |format|
      if @lobbyist.save
        format.html { redirect_to action: :new, notice: 'Lobbyist was successfully created.' }
        format.json { render :index, status: :created, location: @lobbyist }
      else
        format.html { render :new }
        format.json { render json: @lobbyist.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @lobbyist = Lobbyist.find(params[:id])
  end

  def lobbyist_params
    params.require(:lobbyist).permit(:description, :government, :name, :date, :fee, :principal)
  end
end
