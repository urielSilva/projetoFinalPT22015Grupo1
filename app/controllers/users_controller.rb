class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
	end

	def new
		@user = User.new
		@user_types = UserType.all
	end

	def edit
	end

	def create
		@user = User.new(user_params)

		respond_to do |format|
			if @user.save
				format.html { redirect_to @user, notice: 'Membro adicionado com sucesso.' }
				format.json { render :show, status: :created, location: @user}
			else
				format.html { render :new}
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end

end