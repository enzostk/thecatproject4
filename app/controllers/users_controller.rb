class UsersController < ApplicationController

    before_action :authenticate_user!, only: [:show]
    before_action :is_same_user?, only: [:show, :edit]
  
    def show
      @user = User.find(params[:id])
      @month_array = ["","JAN","FEV", "MAR", "AVR", "MAI", "JUN", "JUL", "AOU", "SEP", "OCT", "NOV", "DEC"]
    end
  
    def is_same_user?
      @user = User.find(params[:id])
      current_user == @user ? nil : (redirect_to root_path)
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(params.require(:user).permit(:first_name, :last_name, :description))
        redirect_to user_path(@user.id)
      else
        render :new
      end
    end
  
  
    
  end
  #   before_action :set_user, only: %i[ show edit update destroy ]
  # def action
  # end  
  #   # GET /users or /users.json
  #   def index
  #     @users = User.all
  #   end
  
  #   # GET /users/1 or /users/1.json
  #   def show
  #   end
  
  #   # GET /users/new
  #   def new
  #     @user = User.new
  #   end
  
  #   # GET /users/1/edit
  #   def edit
  #   end
  
  #   # POST /users or /users.json
  #   def create
  #     @user = User.new(user_params)
  
  #       if @user.valid?
  #         @user.save
  #         UserNotifierMailer.send_signup_email(@user).deliver
  #         redirect_to new_user_path
        
  #         # format.html { redirect_to @user, notice: "User was successfully created." }
  #         # format.json { render :show, status: :created, location: @user }
  
  #       else
  #         render "new"
  
  #         # format.html { render :new, status: :unprocessable_entity }
  #         # format.json { render json: @user.errors, status: :unprocessable_entity }
  #       end
      
  #   end
  
  #   # PATCH/PUT /users/1 or /users/1.json
  #   def update
  #     respond_to do |format|
  #       if @user.update(user_params)
  #         format.html { redirect_to @user, notice: "User was successfully updated." }
  #         format.json { render :show, status: :ok, location: @user }
  #       else
  #         format.html { render :edit, status: :unprocessable_entity }
  #         format.json { render json: @user.errors, status: :unprocessable_entity }
  #       end
  #     end
  #   end
  
  #   # DELETE /users/1 or /users/1.json
  #   def destroy
  #     @user.destroy
  #     respond_to do |format|
  #       format.html { redirect_to users_url, notice: "User was successfully destroyed." }
  #       format.json { head :no_content }
  #     end
  #   end
  
  #   private
  #     # Use callbacks to share common setup or constraints between actions.
  #     def set_user
  #       @user = User.find(params[:id])
  #     end
  
  #     # Only allow a list of trusted parameters through.
  #     def user_params
  #       params.require(:user).permit(:username, :first_name, :last_name, :description, :email, :encrypted_password)
  #     end
  #end