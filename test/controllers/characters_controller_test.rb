require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { body: @character.body, country_id: @character.country_id, faction_id: @character.faction_id, family_id: @character.family_id, gender: @character.gender, magenta: @character.magenta, name: @character.name, race_id: @character.race_id, rus_name: @character.rus_name, story_id: @character.story_id } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { body: @character.body, country_id: @character.country_id, faction_id: @character.faction_id, family_id: @character.family_id, gender: @character.gender, magenta: @character.magenta, name: @character.name, race_id: @character.race_id, rus_name: @character.rus_name, story_id: @character.story_id } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
