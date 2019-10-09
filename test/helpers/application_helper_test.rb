require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  it "full title helper" do
    expect(full_title).to eq "Ruby on Rails Tutorial Sample App"
    expect(full_title("Help")).to eq "Help | Ruby on Rails Tutorial Sample App"
  end
end