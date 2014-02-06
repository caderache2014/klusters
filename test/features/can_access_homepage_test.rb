require "test_helper"

feature "Can Access Homepage" do
  scenario "the homepage contains the word Klusters" do
    visit root_path
    page.must_have_content "Klusters"
  end
end
