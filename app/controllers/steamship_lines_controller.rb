class SteamshipLinesController < ApplicationController
  before_action :set_steamship_line, only: [:show, :edit, :update, :destroy]

  # GET /steamship_lines
  # GET /steamship_lines.json
  def index
    @steamship_lines = SteamshipLine.all
  end

  # GET /steamship_lines/1
  # GET /steamship_lines/1.json
  def show
  end

  # GET /steamship_lines/new
  def new
    @steamship_line = SteamshipLine.new
  end

  # GET /steamship_lines/1/edit
  def edit
  end

  # POST /steamship_lines
  # POST /steamship_lines.json
  def create
    @steamship_line = SteamshipLine.new(steamship_line_params)

    respond_to do |format|
      if @steamship_line.save
        format.html { redirect_to @steamship_line, notice: 'Steamship line was successfully created.' }
        format.json { render :show, status: :created, location: @steamship_line }
      else
        format.html { render :new }
        format.json { render json: @steamship_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steamship_lines/1
  # PATCH/PUT /steamship_lines/1.json
  def update
    respond_to do |format|
      if @steamship_line.update(steamship_line_params)
        format.html { redirect_to @steamship_line, notice: 'Steamship line was successfully updated.' }
        format.json { render :show, status: :ok, location: @steamship_line }
      else
        format.html { render :edit }
        format.json { render json: @steamship_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steamship_lines/1
  # DELETE /steamship_lines/1.json
  def destroy
    @steamship_line.destroy
    respond_to do |format|
      format.html { redirect_to steamship_lines_url, notice: 'Steamship line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steamship_line
      @steamship_line = SteamshipLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def steamship_line_params
      params.require(:steamship_line).permit(:name)
    end
end
