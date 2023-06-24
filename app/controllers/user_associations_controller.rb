class UserAssociationsController < ApplicationController
  before_action :set_user_association, only: %i[ show edit update destroy ]

  # GET /user_associations or /user_associations.json
  def index
    @user_associations = UserAssociation.all
  end

  # GET /user_associations/1 or /user_associations/1.json
  def show
  end

  # GET /user_associations/new
  def new
    @user_association = UserAssociation.new
  end

  # GET /user_associations/1/edit
  def edit
  end

  # POST /user_associations or /user_associations.json
  def create
    @user_association = UserAssociation.new(user_association_params)

    respond_to do |format|
      if @user_association.save
        format.html { redirect_to user_association_url(@user_association), notice: "User association was successfully created." }
        format.json { render :show, status: :created, location: @user_association }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_associations/1 or /user_associations/1.json
  def update
    respond_to do |format|
      if @user_association.update(user_association_params)
        format.html { redirect_to user_association_url(@user_association), notice: "User association was successfully updated." }
        format.json { render :show, status: :ok, location: @user_association }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_association.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_associations/1 or /user_associations/1.json
  def destroy
    @user_association.destroy

    respond_to do |format|
      format.html { redirect_to user_associations_url, notice: "User association was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_association
      @user_association = UserAssociation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_association_params
      params.require(:user_association).permit(:user_to, :user_id)
    end
end
