class MainsController < ApplicationController
  before_action :set_main, only: %i[ show edit update destroy ]
  before_action :authenticate_user!,show:[:index,:show]
  before_action :correct_user, only:[:edit,:update,:destroy]
  # GET /mains or /mains.json
  def index
    @mains = Main.all
  end

  # GET /mains/1 or /mains/1.json
  def show
  end

  # GET /mains/new
  def new
    @main = current_user.mains.build
  end

  # GET /mains/1/edit
  def edit

  end

  # POST /mains or /mains.json
  def create
    @main = Main.new(main_params)
    @main = current_user.mains.build(main_params)

    respond_to do |format|
      if @main.save
        format.html { redirect_to main_url(@main), notice: "Your Friend details was successfully created." }
        format.json { render :show, status: :created, location: @main }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mains/1 or /mains/1.json
  def update
    respond_to do |format|
      if @main.update(main_params)
        format.html { redirect_to main_url(@main), notice: "Your Friend details was successfully updated." }
        format.json { render :show, status: :ok, location: @main }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @main.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mains/1 or /mains/1.json
  def destroy
    @main.destroy!

    respond_to do |format|
      format.html { redirect_to mains_url, notice: "Your Friend details was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @main = Main.find(params[:id])
    unless current_user == @main.user
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def main_params
      params.require(:main).permit(:firstname, :lastname, :email, :phone, :twitter,:user_id)
    end
end
