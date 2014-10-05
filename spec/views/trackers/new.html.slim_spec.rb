require 'rails_helper'

RSpec.describe "trackers/new", :type => :view do
  before(:each) do
    assign(:tracker, FactoryGirl.build(:tracker))
  end

  it "renders new tracker form" do
    render

    assert_select "form[action=?][method=?]", trackers_path, "post" do

      assert_select "input#tracker_name[name=?]", "tracker[name]"

      assert_select "input#tracker_producer[name=?]", "tracker[producer]"

      assert_select "input#tracker_uid[name=?]", "tracker[uid]"

      assert_select "select#tracker_user_id[name=?]", "tracker[user_id]"
    end
  end
end
