class QlTvsController < ApplicationController
  before_action :set_ql_tv, only: %i[ show edit update destroy ]

  # GET /ql_tvs or /ql_tvs.json
  def index
    @ql_tvs = QlTv.all
  end

  # GET /ql_tvs/1 or /ql_tvs/1.json
  def show
  end

  # GET /ql_tvs/new
  def new
    @ql_tv = QlTv.new
  end

  # GET /ql_tvs/1/edit
  def edit
  end

  # POST /ql_tvs or /ql_tvs.json
  def create
    @ql_tv = QlTv.new(ql_tv_params)

    respond_to do |format|
      if @ql_tv.save
        format.html { redirect_to ql_tv_url(@ql_tv), notice: "Ql tv was successfully created." }
        format.json { render :show, status: :created, location: @ql_tv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ql_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ql_tvs/1 or /ql_tvs/1.json
  def update
    respond_to do |format|
      if @ql_tv.update(ql_tv_params)
        format.html { redirect_to ql_tv_url(@ql_tv), notice: "Ql tv was successfully updated." }
        format.json { render :show, status: :ok, location: @ql_tv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ql_tv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ql_tvs/1 or /ql_tvs/1.json
  def destroy
    @ql_tv.destroy

    respond_to do |format|
      format.html { redirect_to ql_tvs_url, notice: "Ql tv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ql_tv
      @ql_tv = QlTv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ql_tv_params
      params.require(:ql_tv).permit(:stt, :maHS, :name, :lop, :maSach, :tenSach, :tenTG, :tuSach, :soBM, :ngayMuon, :ngayTra, :soNgay)
    end
end
