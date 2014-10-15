require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_many(:trackers) }
  it { should have_many(:oauth_data).class_name(OauthData) }

  describe ".from_omniauth" do
    context "new user" do
      let(:oauth_data) { FactoryGirl.create(:oauth_data, user: nil) }
      let(:oauth_hash) { Hashie::Mash.new(eval(oauth_data.auth_data)) } # i know the eval is the evil

      it "creates user" do
        User.from_omniauth(oauth_hash, oauth_data)
        expect(User.count).to eq(1)
      end
    end
  end
end
