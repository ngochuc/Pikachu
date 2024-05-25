require "application_system_test_case"

class PikachusTest < ApplicationSystemTestCase
  setup do
    @pikachu = pikachus(:one)
  end

  test "visiting the index" do
    visit pikachus_url
    assert_selector "h1", text: "Pikachus"
  end

  test "should create pikachu" do
    visit pikachus_url
    click_on "New pikachu"

    click_on "Create Pikachu"

    assert_text "Pikachu was successfully created"
    click_on "Back"
  end

  test "should update Pikachu" do
    visit pikachu_url(@pikachu)
    click_on "Edit this pikachu", match: :first

    click_on "Update Pikachu"

    assert_text "Pikachu was successfully updated"
    click_on "Back"
  end

  test "should destroy Pikachu" do
    visit pikachu_url(@pikachu)
    click_on "Destroy this pikachu", match: :first

    assert_text "Pikachu was successfully destroyed"
  end
end
