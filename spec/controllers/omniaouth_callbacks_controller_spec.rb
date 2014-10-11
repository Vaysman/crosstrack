require 'rails_helper'

RSpec.describe OmniauthCallbacksController, :type => :controller do
  before do
    request.env["devise.mapping"] = Devise.mappings[:user]
  end
  context "user sign up" do
    context "fitbit" do
      let(:omniauth_hash) { Hashie::Mash.new({provider: "fitbit", uid: "123" }) }
      before do
        request.env["omniauth.auth"] = omniauth_hash
      end
      describe "GET /users/auth/fitbit/callback" do
        it "create oauth_data" do
          oauth_data = class_double("OauthData").as_stubbed_const
          expect(oauth_data).to receive(:find_or_create_by).with(provider: omniauth_hash.provider, uid: omniauth_hash.uid)
          get "fitbit"
        end

        it "create user from omniauth hash" do
          user = class_double("User")
          expect(user).to receive(:from_omniauth).with(omniauth_hash, instance_of(OauthData))
          get "fitbit"
        end
      end
    end
  end
end
