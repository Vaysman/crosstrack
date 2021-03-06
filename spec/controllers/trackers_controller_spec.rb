require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe TrackersController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Tracker. As you add validations to Tracker, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:tracker)
  }

  let(:invalid_attributes) {
    FactoryGirl.attributes_for(:tracker, name: nil)
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TrackersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all trackers as @trackers" do
      tracker = Tracker.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:trackers)).to eq([tracker])
    end
  end

  describe "GET show" do
    it "assigns the requested tracker as @tracker" do
      tracker = Tracker.create! valid_attributes
      get :show, {:id => tracker.to_param}, valid_session
      expect(assigns(:tracker)).to eq(tracker)
    end
  end

  describe "GET new" do
    it "assigns a new tracker as @tracker" do
      get :new, {}, valid_session
      expect(assigns(:tracker)).to be_a_new(Tracker)
    end
  end

  describe "GET edit" do
    it "assigns the requested tracker as @tracker" do
      tracker = Tracker.create! valid_attributes
      get :edit, {:id => tracker.to_param}, valid_session
      expect(assigns(:tracker)).to eq(tracker)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Tracker" do
        expect {
          post :create, {:tracker => valid_attributes}, valid_session
        }.to change(Tracker, :count).by(1)
      end

      it "assigns a newly created tracker as @tracker" do
        post :create, {:tracker => valid_attributes}, valid_session
        expect(assigns(:tracker)).to be_a(Tracker)
        expect(assigns(:tracker)).to be_persisted
      end

      it "redirects to the created tracker" do
        post :create, {:tracker => valid_attributes}, valid_session
        expect(response).to redirect_to(Tracker.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tracker as @tracker" do
        post :create, {:tracker => invalid_attributes}, valid_session
        expect(assigns(:tracker)).to be_a_new(Tracker)
      end

      it "re-renders the 'new' template" do
        post :create, {:tracker => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
         FactoryGirl.attributes_for(:tracker, name: "NewName")
      }

      it "updates the requested tracker" do
        tracker = Tracker.create! valid_attributes
        put :update, {:id => tracker.to_param, :tracker => new_attributes}, valid_session
        tracker.reload
        expect(tracker.name).to eq("NewName")
      end

      it "assigns the requested tracker as @tracker" do
        tracker = Tracker.create! valid_attributes
        put :update, {:id => tracker.to_param, :tracker => valid_attributes}, valid_session
        expect(assigns(:tracker)).to eq(tracker)
      end

      it "redirects to the tracker" do
        tracker = Tracker.create! valid_attributes
        put :update, {:id => tracker.to_param, :tracker => valid_attributes}, valid_session
        expect(response).to redirect_to(tracker)
      end
    end

    describe "with invalid params" do
      it "assigns the tracker as @tracker" do
        tracker = Tracker.create! valid_attributes
        put :update, {:id => tracker.to_param, :tracker => invalid_attributes}, valid_session
        expect(assigns(:tracker)).to eq(tracker)
      end

      it "re-renders the 'edit' template" do
        tracker = Tracker.create! valid_attributes
        put :update, {:id => tracker.to_param, :tracker => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tracker" do
      tracker = Tracker.create! valid_attributes
      expect {
        delete :destroy, {:id => tracker.to_param}, valid_session
      }.to change(Tracker, :count).by(-1)
    end

    it "redirects to the trackers list" do
      tracker = Tracker.create! valid_attributes
      delete :destroy, {:id => tracker.to_param}, valid_session
      expect(response).to redirect_to(trackers_url)
    end
  end

end
