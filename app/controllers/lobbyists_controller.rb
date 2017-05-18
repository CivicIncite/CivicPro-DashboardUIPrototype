class LobbyistsController < ApplicationController
  before_action :set_lobbyist, only: [:edit, :update, :destroy]

  def new
    @lobbyist = Lobbyist.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @lobbyist.update(relobbyist_params)
        format.html { redirect_to action: :admin, notice: 'lobbyist was successfully updated.' }
        format.json { render :show, status: :ok, location: @lobbyist }
      else
        format.html { render :edit }
        format.json { render json: @lobbyist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lobbyist.destroy
    respond_to do |format|
      format.html { redirect_to action: :admin, notice: 'lobbyist was successfully destroyed.' }
      format.json { head :no_content }
    end
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lobbyist
      @lobbyist = Lobbyist.find(params[:id])
    end

  def lobbyist_params
    params.require(:lobbyist).permit(:description, :government, :name, :date, :fee, :principal)
  end
end
