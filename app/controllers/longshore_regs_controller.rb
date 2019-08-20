class LongshoreRegsController < ApplicationController
  before_action :set_longshore_reg, only: [:show, :edit, :update, :destroy]

  # GET /longshore_regs
  # GET /longshore_regs.json
  def index
    @longshore_regs = LongshoreReg.all
  end

  # GET /longshore_regs/1
  # GET /longshore_regs/1.json
  def show
  end

  # GET /longshore_regs/new
  def new
    @longshore_reg = LongshoreReg.new
  end

  # GET /longshore_regs/1/edit
  def edit
  end

  # POST /longshore_regs
  # POST /longshore_regs.json
  def create
    @longshore_reg = LongshoreReg.new(longshore_reg_params)

    respond_to do |format|
      if @longshore_reg.save
        format.html { redirect_to @longshore_reg, notice: 'Longshore reg was successfully created.' }
        format.json { render :show, status: :created, location: @longshore_reg }
      else
        format.html { render :new }
        format.json { render json: @longshore_reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /longshore_regs/1
  # PATCH/PUT /longshore_regs/1.json
  def update
    respond_to do |format|
      if @longshore_reg.update(longshore_reg_params)
        format.html { redirect_to @longshore_reg, notice: 'Longshore reg was successfully updated.' }
        format.json { render :show, status: :ok, location: @longshore_reg }
      else
        format.html { render :edit }
        format.json { render json: @longshore_reg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /longshore_regs/1
  # DELETE /longshore_regs/1.json
  def destroy
    @longshore_reg.destroy
    respond_to do |format|
      format.html { redirect_to longshore_regs_url, notice: 'Longshore reg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_longshore_reg
      @longshore_reg = LongshoreReg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def longshore_reg_params
      params.require(:longshore_reg).permit(:name, :number)
    end
end
