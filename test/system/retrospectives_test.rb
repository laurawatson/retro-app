require "application_system_test_case"

class RetrospectivesTest < ApplicationSystemTestCase
  setup do
    @retrospective = retrospectives(:one)
  end

  test "visiting the index" do
    visit retrospectives_url
    assert_selector "h1", text: "Retrospectives"
  end

  test "creating a Retrospective" do
    visit retrospectives_url
    click_on "New Retrospective"

    click_on "Create Retrospective"

    assert_text "Retrospective was successfully created"
    click_on "Back"
  end

  test "updating a Retrospective" do
    visit retrospectives_url
    click_on "Edit", match: :first

    click_on "Update Retrospective"

    assert_text "Retrospective was successfully updated"
    click_on "Back"
  end

  test "destroying a Retrospective" do
    visit retrospectives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Retrospective was successfully destroyed"
  end
end
