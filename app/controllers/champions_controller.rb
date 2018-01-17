# frozen_string_literal: true
class ChampionsController < OpenReadController
  before_action :set_champion, only: [:update, :destroy]

  # GET /champions
  def index
    @champions = Champion.all

    render json: @champions
  end

  # GET /champions/1
  def show
    render json: @champion
  end

  # POST /champions
  def create
    @champion = current_user.champions.build(champion_params)

    if @champion.save
      render json: @champion, status: :created, location: @champion
    else
      render json: @champion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /champions/1
  def update
    if @champion.update(champion_params)
      render json: @champion
    else
      render json: @champion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /champions/1
  def destroy
    @champion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_champion
      @champion = current_user.champions.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def champion_params
      params.require(:champion).permit(:name, :role, :guide)
    end
end
