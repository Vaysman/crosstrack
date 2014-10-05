require 'rails_helper'

RSpec.describe Tracker, :type => :model do
  it { should belong_to(:user) }

  it { should validate_presence_of(:name) }

  # it { should validate_uniqueness_of(:position).scoped_to(:game_id, :quest_id, :team_id) }

end
