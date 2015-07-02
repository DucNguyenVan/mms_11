require "rails_helper"

describe Team do
  context "test has_many" do
    let(:team) {FactoryGirl.build(:team)}
    it {expect(team).to have_many(:members).through(:user_teams)}
    it {expect(team).to have_many(:user_teams)}
    it {expect(team).to belong_to(:leader).class_name("User").inverse_of(:team)}
    it {expect(team).to accept_nested_attributes_for(:user_teams)}
  end

  describe "#name" do
    subject {FactoryGirl.create :team}
    before {subject.name = nil}
    it {is_expected.to have(1).error_on(:name)}
  end
end
