class KnowledgesController < ApplicationController
	before_action :set_knowledge, only: [:show, :edit, :update, :destroy]

	def index
		@knowledges = Knowledge.includes(:knowledge_level).all
	end

	def show		
	end

	def new
		@knowledge = Knowledge.new
		@knowledge_levels = KnowledgeLevel.all
	end

	def edit		
	end

	def create
		@knowledge = Knowledge.new(knowledge_params)

		respond_to do |format|
			if @knowledge.save
				format.html { redirect_to @knowledge, notice: 'Knowledge was successfully created.'}
				format.json { render :show, status: :created, location: @knowledge}
			else
				format.html { render :new }
				format.json { render json: @knowledge.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @knowledge.update(knowledge_params)
				format.html { redirect_to @knowledge, notice: 'Knowledge was successfully updated.'}
				format.json { render :show, status: :ok, location: @knowledge }
			else
				format.html { render :edit }
				format.json { render json: @knowledge.errors, status: :unprocessable_entity}
			end
		end		
	end

	def destroy
		@knowledge.destroy
		respond_to do |format|
			format.html { redirect_to knowledges_url, notice: 'Knowledge was successfully destroyed.'}
			format.json { head :no_content}
		end		
	end

	private
		def set_knowledge
			@knowledge = Knowledge.find(params[:id])
		end

		def knowledge_params
			params.require(:knowledge).permit(:description, :knowledge_level_id)
		end
end
