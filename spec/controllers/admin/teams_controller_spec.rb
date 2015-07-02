require "rails_helper"

describe Admin::TeamsController do
  describe "GET #index" do
    before {get :index}
    it {is_expected.to render_template :index}
  end

  describe "POST #create" do
    context "create team" do
      subject {xhr :post, :create, {team: FactoryGirl.attributes_for(:team)}}
      it "should be valid when saved" do
        expect {subject}.to change(Team, :count).by(1)
      end
    end
  end
end
