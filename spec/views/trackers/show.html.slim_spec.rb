require 'rails_helper'

RSpec.describe "trackers/show", :type => :view do
  before(:each) do
    @tracker = assign(:tracker, Tracker.create!(
      :name => "Name",
      :producer => "Producer",
      :uid => "Uid",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Producer/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(//)
  end
end
