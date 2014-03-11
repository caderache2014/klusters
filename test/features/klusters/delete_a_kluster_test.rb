require "test_helper"

feature "As a user I want to delete a kluster" do
  scenario "delete a kluster successfully" do
    sign_in
    visit root_path
    click_on "My Klusters"
    click_on klusters(:sample_kluster).name
    click_on "Edit Kluster"
    click_on "Destroy Kluster"
    page.wont_have_content "Sample Kluster"
  end
end
