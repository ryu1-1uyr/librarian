class UsersController < ApplicationController
	before_action :set_user, {only: [:index,:show,:edit,:update]}
	before_action :authenticate_user, {only: [:index,:show,:edit,:update]}
	before_action :forbid_login_user, {only: [:new,:create,:login_form,:login]}
	before_action :ensure_correct_user, {only: [:edit,:update]}

	def index
		@users = Users.all
	end

	def show
#		render :json => @user
	end
	
	def new
		@user = Users.new
	end
	
	def edit
	end
	
	def create
		@user = Users.new(user_params)

		respond_to do |format|
			if @user.save
				format.html { redirect_to @user, notice: 'User was successfully created.' }
				format.json { render :show, status: :created, location: @user }
			else
				format.html { render :new }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end
	
	def update
		respond_to do |format|
			if @user.update(user_params)
				format.html { redirect_to @user, notice: 'User was successfully updated.' }
				format.json { render :show, status: :ok, location: @user }
			else
				format.html { render :edit }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end
	
	def destroy
		@user.destroy
		respond_to do |format|
			format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
			format.json { head :no_content }
		end
	end
	
	def login_form
		
	end
	
	def login
		@user = Users.find_by(email: params[:email], password: params[:password])
		if @user
			session[:user_id] = @user.id
			flash[:notice] = "ログインしました"
			redirect_to("/books")
		else
			@error_message = "メールアドレスまたはパスワードが間違っています"
			@email = params[:email]
			@password = params[:password]
			
			render("/users/login_form")
		end
	end
	
	def logout
		session[:user_id] = nil
		flash[:notice] = "ログアウトしました"
		redirect_to("/login")
	end
	
	def ensure_correct_user
		if @current_user.id != params[:id].to_i
			flash[:notice] = "権限がありません"
			redirect_to("/users")
		end
	end
	
	
	
	
	
	private
		def set_user
			@user = Users.find_by(id: params[:id])
		end
		
		def user_params
			params.permit(:name, :email, :password)
		end




end
