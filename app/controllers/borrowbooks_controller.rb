class BorrowbooksController < ApplicationController
  before_action :set_borrowbook, only: %i[ show edit update destroy ]

  # GET /borrowbooks or /borrowbooks.json
  def index
    @borrowbooks = Borrowbook.all
  end

  # GET /borrowbooks/1 or /borrowbooks/1.json
  def show
  end

  # GET /borrowbooks/new
  def new
    @borrowbook = Borrowbook.new
  end

  # GET /borrowbooks/1/edit
  def edit
  end

  # POST /borrowbooks or /borrowbooks.json
  def create
    @borrowbook = Borrowbook.new(borrowbook_params)

    respond_to do |format|
      if @borrowbook.save
        format.html { redirect_to borrowbook_url(@borrowbook), notice: "Borrowbook was successfully created." }
        format.json { render :show, status: :created, location: @borrowbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @borrowbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowbooks/1 or /borrowbooks/1.json
  def update
    respond_to do |format|
      if @borrowbook.update(borrowbook_params)
        format.html { redirect_to borrowbook_url(@borrowbook), notice: "Borrowbook was successfully updated." }
        format.json { render :show, status: :ok, location: @borrowbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @borrowbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowbooks/1 or /borrowbooks/1.json
  def destroy
    @borrowbook.destroy

    respond_to do |format|
      format.html { redirect_to borrowbooks_url, notice: "Borrowbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrowbook
      @borrowbook = Borrowbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def borrowbook_params
      params.require(:borrowbook).permit(:maHS, :tenHS, :maSach, :tenSach, :tuSach, :ngayMuon, :ngayTra)
    end
end
