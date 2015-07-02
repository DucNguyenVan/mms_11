require "rails_helper"

describe Skill do
  describe "#name" do
    subject {FactoryGirl.create :skill}
    before {subject.name = nil}
    it {is_expected.to have(1).error_on(:name)}
  end

  context "has many users" do
    let(:skill) {FactoryGirl.build(:skill)}
    it {expect(skill).to have_many(:users).through(:user_skills)}
  end

  context "has many user skills" do
    let(:skill) {FactoryGirl.build(:skill)}
    it {expect(skill).to have_many(:user_skills)}
  end
end
