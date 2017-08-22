class MireposController < ApplicationController
  before_action :set_mirepo, only: [:show, :edit, :update, :destroy]

  # GET /mirepos
  # GET /mirepos.json
  def index
    @mirepos = Mirepo.all
  end

  # GET /mirepos/1
  # GET /mirepos/1.json
  def show
  end

  # GET /mirepos/new
  def new
    @mirepo = Mirepo.new
  end

  # GET /mirepos/1/edit
  def edit
  end

  # POST /mirepos
  # POST /mirepos.json
  def create
    @mirepo = Mirepo.new(mirepo_params)

    respond_to do |format|
      if @mirepo.save
        format.html { redirect_to @mirepo, notice: 'Mirepo was successfully created.' }
        format.json { render :show, status: :created, location: @mirepo }
      else
        format.html { render :new }
        format.json { render json: @mirepo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mirepos/1
  # PATCH/PUT /mirepos/1.json
  def update
    respond_to do |format|
      if @mirepo.update(mirepo_params)
        format.html { redirect_to @mirepo, notice: 'Mirepo was successfully updated.' }
        format.json { render :show, status: :ok, location: @mirepo }
      else
        format.html { render :edit }
        format.json { render json: @mirepo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mirepos/1
  # DELETE /mirepos/1.json
  def destroy
    @mirepo.destroy
    respond_to do |format|
      format.html { redirect_to mirepos_url, notice: 'Mirepo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mirepo
      @mirepo = Mirepo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mirepo_params
      params.require(:mirepo).permit(:user, :edad)
    end
end
