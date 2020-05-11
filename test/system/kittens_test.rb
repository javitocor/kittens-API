require "application_system_test_case"

class KittensTest < ApplicationSystemTestCase
  setup do
    @kitten = kittens(:one)
  end

  test "visiting the index" do
    visit kittens_url
    assert_selector "h1", text: "Kittens"
  end

  test "creating a Kitten" do
    visit kittens_url
    click_on "New Kitten"

    click_on "Create Kitten"

    assert_text "Kitten was successfully created"
    click_on "Back"
  end

  test "updating a Kitten" do
    visit kittens_url
    click_on "Edit", match: :first

    click_on "Update Kitten"

    assert_text "Kitten was successfully updated"
    click_on "Back"
  end

  test "destroying a Kitten" do
    visit kittens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kitten was successfully destroyed"
  end
end
