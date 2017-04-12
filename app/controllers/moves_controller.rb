class MovesController < ApplicationController
  before_action :set_move, only: [:show, :edit, :update, :destroy]

  # GET /moves
  def index
    @moves = Move.all
  end

  # GET /moves/1
  def show
  end

  # GET /moves/new
  def new
    @move = Move.new
  end

  # GET /moves/1/edit
  def edit
  end

  # POST /moves
  def create
    @move = Move.new(move_params)

    respond_to do |format|
      if @move.save
        format.html { redirect_to @move, notice: 'Move was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /moves/1
  def update
    respond_to do |format|
      if @move.update(move_params)
        format.html { redirect_to @move, notice: 'Move was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /moves/1
  def destroy
    @move.destroy
    respond_to do |format|
      format.html { redirect_to moves_url, notice: 'Move was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move
      @move = Move.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def move_params
      params.require(:move).permit(:name, :description, :type_id)
    end
end
