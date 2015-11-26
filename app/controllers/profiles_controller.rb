class ProfilesController < ApplicationController
	before_action :set_profile, only: [:show, :edit, :update, :destroy]
	
	def index
		@profiles = Profile.all
	end

	def show
	end

	def new
		@profile = Profile.new
	end

	def edit
	end

	def create
		@profile = Profile.new(profile_params)

		respond_to do |format|
			if @profile.save
				format.html { redirect_to @profile, notice: 'Profile criado com sucesso.' }
				format.json { render :show, status: :created, location: @profile }
			else
				format.html { render :new }
				format.json { render json: @profile.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @profile.update(profile_params)
				format.html {redirect_to @profile, notice: 'Profile atualizado com sucesso.' }
				format.json { render :show, status: :ok, location: @profile }
			else
				format.html { render :edit }
				format.json { render json: @profile.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@profile.destroy
		respond_to do |format|
			format.html { redirect_to profiles_url, notice: 'Profile destruido com sucesso.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_profile
			@profile = Profile.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def profile_params
			params.require(:profile).permit(:tipo)
		end
end
