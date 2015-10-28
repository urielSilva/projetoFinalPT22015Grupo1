class KnowledgeLevelsController < ApplicationController
  before_action :set_knowledge_level, only: [:show, :edit, :update, :destroy]

  # GET /knowledge_levels
  # GET /knowledge_levels.json
  def index
    @knowledge_levels = KnowledgeLevel.where("id < ?", 3)

  end

  # GET /knowledge_levels/1
  # GET /knowledge_levels/1.json
  def show
  end

  # GET /knowledge_levels/new
  def new
    @knowledge_level = KnowledgeLevel.new
  end

  # GET /knowledge_levels/1/edit
  def edit
  end

  # POST /knowledge_levels
  # POST /knowledge_levels.json
  def create
    @knowledge_level = KnowledgeLevel.new(knowledge_level_params)

    respond_to do |format|
      if @knowledge_level.save
        format.html { redirect_to @knowledge_level, notice: 'Knowledge level was successfully created.' }
        format.json { render :show, status: :created, location: @knowledge_level }
      else
        format.html { render :new }
        format.json { render json: @knowledge_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knowledge_levels/1
  # PATCH/PUT /knowledge_levels/1.json
  def update
    respond_to do |format|
      if @knowledge_level.update(knowledge_level_params)
        format.html { redirect_to @knowledge_level, notice: 'Knowledge level was successfully updated.' }
        format.json { render :show, status: :ok, location: @knowledge_level }
      else
        format.html { render :edit }
        format.json { render json: @knowledge_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knowledge_levels/1
  # DELETE /knowledge_levels/1.json
  def destroy
    @knowledge_level.destroy
    respond_to do |format|
      format.html { redirect_to knowledge_levels_url, notice: 'Knowledge level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knowledge_level
      @knowledge_level = KnowledgeLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knowledge_level_params
      params.require(:knowledge_level).permit(:description, :level)
    end
end
