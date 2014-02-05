require "test_helper"

class CreatingAKlusterTest < Capybara::Rails::TestCase
  test "Verify that paperclip is being used" do
    visit new_kluster_path
    #it { should have_attached_file(:document) }
    page.body.must_include "kluster_document"
  end
  
end
