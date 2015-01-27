class ScrubsController < ApplicationController
  before_action :set_scrub, only: [:show, :edit, :update, :destroy]
  # before_filter :authenticate_user!

  # GET /scrubs
  # GET /scrubs.json
  def index
    # @scrubs = Scrub.all
    @scrubs = Scrub.find_by(user_id: session[:user_id])
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    puts "session[:user_id] = #{session[:user_id]}"
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  end

  # GET /scrubs/1
  # GET /scrubs/1.json
  def show
  end

  # GET /scrubs/new
  def new
    @scrub = Scrub.new
  end

  # GET /scrubs/1/edit
  def edit
  end

  # POST /scrubs
  # POST /scrubs.json
  def create
    @scrub = Scrub.new(scrub_params)

    respond_to do |format|
      if @scrub.save
        format.html { redirect_to @scrub, notice: 'Scrub was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scrub }
      else
        format.html { render action: 'new' }
        format.json { render json: @scrub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scrubs/1
  # PATCH/PUT /scrubs/1.json
  def update
    respond_to do |format|
      if @scrub.update(scrub_params)
        format.html { redirect_to @scrub, notice: 'Scrub was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scrub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrubs/1
  # DELETE /scrubs/1.json
  def destroy
    @scrub.destroy
    respond_to do |format|
      format.html { redirect_to scrubs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scrub
      @scrub = Scrub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scrub_params
      params.require(:scrub).permit(:name, :file_type, :size)
    end
end
