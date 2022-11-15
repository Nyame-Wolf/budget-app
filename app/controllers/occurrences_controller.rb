class OccurrencesController < ApplicationController
  before_action :set_occurrence, only: %i[show edit update destroy]

  # GET /occurrences or /occurrences.json
  def index
    @occurrences = Occurrence.all
  end

  # GET /occurrences/1 or /occurrences/1.json
  def show; end

  # GET /occurrences/new
  def new
    @occurrence = Occurrence.new
  end

  # GET /occurrences/1/edit
  def edit; end

  # POST /occurrences or /occurrences.json
  def create
    @occurrence = Occurrence.new(occurrence_params)

    respond_to do |format|
      if @occurrence.save
        format.html { redirect_to occurrence_url(@occurrence), notice: 'Occurrence was successfully created.' }
        format.json { render :show, status: :created, location: @occurrence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occurrences/1 or /occurrences/1.json
  def update
    respond_to do |format|
      if @occurrence.update(occurrence_params)
        format.html { redirect_to occurrence_url(@occurrence), notice: 'Occurrence was successfully updated.' }
        format.json { render :show, status: :ok, location: @occurrence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occurrences/1 or /occurrences/1.json
  def destroy
    @occurrence.destroy

    respond_to do |format|
      format.html { redirect_to occurrences_url, notice: 'Occurrence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_occurrence
    @occurrence = Occurrence.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def occurrence_params
    params.require(:occurrence).permit(:name, :amount)
  end
end
