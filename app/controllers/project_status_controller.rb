class ProjectStatusController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@project_statuses = ProjectStatus.all
	end

	def show
	end

	def new
		@project_status = ProjectStatus.new
	end

	def edit
	end

	def create
		@project_status = ProjectStatus.new(project_status_params)

		respond_to do |format|
			if @project.save
				format.html { redirect_to @project_status, notice: 'Project Status was successfully created'}
				format.json { render :show, status: :created, location: @project_status}
			else
				format.html { render :new}
				format.json { render json: @project_status.errors, status: :unprocessable_entity}
			end
		end
	end

	def update
		respond_to do |format|
			if @project_status.update(project_status_params)
				format.html { redirect_to @project_status, notice: 'Project Status was successfully updated'}
				format.json { render :show, status: :ok, location @project_status}
			else
				format.html { render :edit}
				format.json { render json: @project_status.errors, status: :unprocessable_entity}
			end
		end
	end

	def destroy
		@project_status.destroy
		respond_to do |format|
			format.html { redirect_to_project_statuses_url, notice: 'Project Status was successfully destroyed'}
			format.json { head :no_content}
		end
	end

	private

	def set_project_status
		@project_status = ProjectStatus.find(params[:id])
	end

	def project_status_params
		params.require(:project_status).permit(:Nome)
	end
end
