class TechnologiesController < ApplicationController
	before_action :set_technology, only: [:show, :edit, :update, :destroy]
	
	# GET /jobs
	# GET /jobs.json

	def index
		@technologies = Technology.all
	end

	# GET /jobs/1
	# GET /jobs/1.json
	def show
	end

	# GET /jobs/new

	def new
		@technology = Technology.new
	end

	# GET /jobs/1/edit
	def edit
	end

	# POST /jobs
	# POST /jobs.json
	def create
		@technology = Technology.new(technology_params)

		respond_to do |format|
			if @technology.save
				format.html { redirect_to @technology, notice: 'Tecnologia criada com sucesso.' }
				format.json { render :show, status: :created, location: @technology }
			else
				format.html { render :new }
				format.json { render json: @technology.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /jobs/1
	# PATCH/PUT /jobs/1.json
	def update
		respond_to do |format|
			if @technology.update(job_params)
				format.html {redirect_to @technology, notice: 'Tecnologia atualizada com sucesso.' }
				format.json { render :show, status: :ok, location: @technology }
			else
				format.html { render :edit }
				format.json { render json: @technology.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /jobs/1
	# DELETE /jobs/1.json
	def destroy
		@technology.destroy
		respond_to do |format|
			format.html { redirect_to technologies_url, notice: 'Tecnologia destruida com sucesso.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_technology
			@technology = Technology.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def technology_params
			params.require(:technology).permit(:technology_name)
		end
end
