class SourceLookupsController < ApplicationController
  before_action :set_source_lookup, only: %i[ show edit update destroy ]

  # GET /source_lookups or /source_lookups.json
  def index
    @source_lookups = SourceLookup.all
  end

  # GET /source_lookups/1 or /source_lookups/1.json
  def show
  end

  # GET /source_lookups/new
  def new
    @source_lookup = SourceLookup.new
  end

  # GET /source_lookups/1/edit
  def edit
  end

  # POST /source_lookups or /source_lookups.json
  def create
    @source_lookup = SourceLookup.new(source_lookup_params)

    respond_to do |format|
      if @source_lookup.save
        format.html { redirect_to source_lookup_url(@source_lookup), notice: "Source lookup was successfully created." }
        format.json { render :show, status: :created, location: @source_lookup }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @source_lookup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /source_lookups/1 or /source_lookups/1.json
  def update
    respond_to do |format|
      if @source_lookup.update(source_lookup_params)
        format.html { redirect_to source_lookup_url(@source_lookup), notice: "Source lookup was successfully updated." }
        format.json { render :show, status: :ok, location: @source_lookup }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @source_lookup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /source_lookups/1 or /source_lookups/1.json
  def destroy
    @source_lookup.destroy

    respond_to do |format|
      format.html { redirect_to source_lookups_url, notice: "Source lookup was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source_lookup
      @source_lookup = SourceLookup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def source_lookup_params
      params.require(:source_lookup).permit(:SOURCE_SYSTEM, :BANNER_NAME, :SOURCE_TABLES)
    end
end
