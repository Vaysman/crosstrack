require 'rails_helper'

RSpec.describe "trackers/index", :type => :view do
  before(:each) do
    assign(:trackers, [
      Tracker.create!(
        :name => "Name",
        :producer => "Producer",
        :uid => "Uid",
        :user => nil
      ),
      Tracker.create!(
        :name => "Name",
        :producer => "Producer",
        :uid => "Uid",
        :user => nil
      )
    ])
  end

  it "renders a list of trackers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Producer".to_s, :count => 2
    assert_select "tr>td", :text => "Uid".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
