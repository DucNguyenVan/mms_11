require "rails_helper"
require "byebug"

describe "admin/users/index.html.erb" do
  describe "pagination" do
    # subject {page}
    # before do
    #   @users = []
    #   30.times {@users << FactoryGirl.create(:user)}
    #   byebug
    # end

    it do
      30.times {FactoryGirl.create(:user)}
      @users = User.all
      byebug

      render @users
      byebug
      # expect(page).to have_selector("div.pagination")
      # expect(page).to have_selector('div', class: 'pagination')
      expect(page).to have_css('div.containers')
    end
  end
end
