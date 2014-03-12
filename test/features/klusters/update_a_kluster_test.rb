require "test_helper"

feature "As a user I want to update a kluster" do
  scenario "update a kluster successfully" do
    sign_in
    visit root_path
    click_on "My Klusters"
    click_on klusters(:sample_kluster).name
    click_on "Edit Kluster"
    fill_in "Name", with: "Updated Kluster Name"
    click_on "Update Kluster"
    page.must_have_content "Kluster was successfully updated."
  end
end
