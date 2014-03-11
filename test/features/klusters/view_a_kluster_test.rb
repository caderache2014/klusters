require "test_helper"

feature "As a user I want to view a kluster" do
  scenario "view a kluster successfully" do
    sign_in
    visit root_path
    click_on "My Klusters"
    click_on klusters(:sample_kluster).name
    page.must_have_content klusters(:sample_kluster).name
    page.must_have_content users(:test_user).email
  end
end
