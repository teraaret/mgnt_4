class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

    # GET /characters/1
    # GET /characters/1.json
    def show
        # find race
        if Race.exists?(@character.race_id)
            @race = Race.find(@character.race_id)
        else
            @race = nil
        end
        
        # find gender
        if Gender.exists?(@character.gender_id)
            @gender = Gender.find(@character.gender_id)
        else
            @gender = nil
        end
        
        # find story
        if Story.exists?(@character.story_id)
            @story = Story.find(@character.story_id)
        else
            @story = nil
        end
        
        # find faction
        if Faction.exists?(@character.faction_id)
            @faction = Faction.find(@character.faction_id)
        else
            @faction = nil
        end
        
        # find country
        if Country.exists?(@character.country_id)
            @country = Country.find(@character.country_id)
        else
            @country = nil
        end
    end

    # GET /characters/new
    def new
        @character = Character.new
        @races = Race.all
        @genders = Gender.all
        @stories = Story.all
        @factions = Faction.all
        @countries = Country.all
    end

    # GET /characters/1/edit
    def edit
        @races = Race.all
        @genders = Gender.all
        @stories = Story.all
        @factions = Faction.all
        @countries = Country.all
    end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :body, :race_id, :gender_id, :magenta, :story_id, :faction_id, :country_id)
    end
end
