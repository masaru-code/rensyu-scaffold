require "application_system_test_case"

class ScaffosTest < ApplicationSystemTestCase
  setup do
    @scaffo = scaffos(:one)
  end

  test "visiting the index" do
    visit scaffos_url
    assert_selector "h1", text: "Scaffos"
  end

  test "creating a Scaffo" do
    visit scaffos_url
    click_on "New Scaffo"

    fill_in "Body", with: @scaffo.body
    fill_in "Title", with: @scaffo.title
    click_on "Create Scaffo"

    assert_text "Scaffo was successfully created"
    click_on "Back"
  end

  test "updating a Scaffo" do
    visit scaffos_url
    click_on "Edit", match: :first

    fill_in "Body", with: @scaffo.body
    fill_in "Title", with: @scaffo.title
    click_on "Update Scaffo"

    assert_text "Scaffo was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffo" do
    visit scaffos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffo was successfully destroyed"
  end
end
