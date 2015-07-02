require "rails_helper"
require "byebug"

describe "admin/users/index.html.erb" do
  describe "should have pagination" do
    it do
      30.times {FactoryGirl.create(:user)}
      visit "/admin/users"
      expect(page).to have_selector("div.pagination")
    end
  end
end
